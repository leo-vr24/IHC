xColor circulos;

void setup(){
size(290,350);
background(255);
smooth();
noStroke();

circulos=new xColor(0.2,0.5,0.9);


}
void draw(){
float num=random(1);
circulos.display(num);

}
