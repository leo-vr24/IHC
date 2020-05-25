#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Sun May 24 19:45:12 2020

@author: leonardo
"""


import cv2 
from firebase import firebase


firebase = firebase.FirebaseApplication("https://facespython.firebaseio.com/", None)
face_cascade = cv2.CascadeClassifier('haarcascade_frontalface_default.xml') 
smile_cascade = cv2.CascadeClassifier('haarcascade_smile.xml') 

def detect(gray, frame):
    count_faces=0
    count_smiles=0
   
    faces=face_cascade.detectMultiScale(gray, 1.3, 5) 
    
    for (x,y,w,h) in faces:
        print(x,y,w,h)
        cv2.rectangle(frame, (x, y), ((x + w), (y + h)), (255, 155, 0), 3) 
        roi_gray = gray[y:y + h, x:x + w] 
        roi_color = frame[y:y + h, x:x + w] 
        smiles = smile_cascade.detectMultiScale(roi_gray, 1.8, 20) 
        
        for (sx, sy, sw, sh) in smiles: 
            cv2.rectangle(roi_color, (sx, sy), ((sx + sw), (sy + sh)), (0, 155, 255), 2)
            count_smiles=len(smiles)
            

    count_faces=len(faces)  
    
    print(count_faces)
    print(count_smiles)
    
    if count_faces !=count_smiles:
        print("something not so good is happening")
    else:
        print("something cool is happening")
        
    data={
       "Numero de caras detectadas:" : count_faces,
       "Numero de sonrisas detectadas:": count_smiles
        }
    #result =firebase.post("/Sensor:  ", data)
    firebase.put("/Sensor","Numero de caras" ,count_faces)
    firebase.put("/Sensor","Numero de sonrisas" ,count_smiles)
  

   
    return frame

def main():
    
    video_capture = cv2.VideoCapture(0) 
    while True: 
    
       # Captures video_capture frame by frame 
        _, frame = video_capture.read()  
      
        # To capture image in monochrome                     
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)   
          
        # calls the detect() function     
        canvas = detect(gray, frame)    
      
        # Displays the result on camera feed                      
        cv2.imshow('Video', canvas)  
        #print(num_of_faces, num_of_smiles)
      
        # The control breaks once q key is pressed                         
        if cv2.waitKey(1) & 0xff == ord('q'):                
            break
      
    # Release the capture once all the processing is done. 
    video_capture.release()                                  
    cv2.destroyAllWindows() 
    
    
    
main()