//Delfina Alonso. Comision 3
PImage miImagen;
void setup(){
size(800,400);
miImagen= loadImage("miFotoDeMural.jpeg");
}
void draw() {
background(#C6E3C3);//el color del fondo
 //cargar la imagen
image(miImagen,0,0,400,400);
fill(#C63EB0);//el color rosa del pajarito.
stroke(0);
fill(#C63EB0);//el color rosa del pajarito,usamos el mismo para el cuerpo.
triangle(442,173,469,168,468,197);//pico del pajarito.
line(442,173,480,182);//(linea del pico)
triangle(790,133,684,140,684,235);//cola del pajarito
triangle(790,223,684,168,684,230);
noStroke();
ellipse(616,126,140,59);//da forma al ala de arriba.
stroke(0);
triangle(721,143,681,118,679,140);//parte del ala.
triangle(722,126,681,113,681,127);
triangle(722,105,665,103,681,120);
noStroke();
ellipse(620,238,140,56);//horizontal, vertical, ancho y largo del ala de abajo.
stroke(0);
triangle(711,230,676,241,672,258);//parte del ala
rect(550,140,178,87);// x, y, ancho, alto. (cuerpo del pajarito)
noStroke();
ellipse(520,184,105,105);//horizontal,vertical,ancho y largo del circulo, (cabeza del pajaro)
stroke(0);
fill(0);//color del ojo(el fondo negro)
ellipse(500,175,20,6);
fill(255);
ellipse(499,176,16,12);//horizontal,vertical,ancho y largo del blanco del ojo
fill(0);//parte interna del ojo
ellipse(500,175,11,10);//horizontal,vertical, ancho y largo de esta parte negra interna del ojo.
fill(255);//blanco del destello del ojo 
ellipse(502,173,5,6);//destello mas grande
ellipse(503,177,3,4);//destello mas chiquito
strokeWeight(2);//grosor de la pestaña
line(491,180,489,180);//x1,y1,x2,y2 (pestaña del ojo)
line(494,181,494,182);
line(498,181,498,183);
line(501,181,502,183);
line(505,180,507,182);
strokeWeight(1);// ponemos el grosor normal de vuelta.
fill(#C63EB0);//el color rosa del pajarito.
triangle(716,210,678,226,674,248);//parte del ala. (cambie el orden de este triangulo para que el cuerpo (el rectangulo) no lo tape.
//ramas del fondo
line(410,221,520,287);//x1,y1,x2,y2
fill(#4EAF75);//color de las hojas
ellipse(424,239,22,13);//hoja 
line(420,239,432,237);//tallo de la hoja
ellipse(442,231,8,16);//hoja
line(442,228,442,237);//tallo
ellipse(452,255,21,11);//hoja
line(449,255,457,252);//tallo
ellipse(478,251,10,20);// hoja
line(478,245,478,259);//tallo
ellipse(494,280,10,17);//hoja
line(494,271,494,284);//tallo
//ramas negras
fill(0);
line(735,40,785,123);
ellipse(736,38,6,11);
ellipse(740,57,11,6);
ellipse(755,66,6,11);
ellipse(753,80,11,6);
ellipse(766,83,6,11);
ellipse(763,97,11,6);
ellipse(774,97,6,11);
ellipse(782,111,11,6);
//(otra rama negra)
line(650,295,735,380);
ellipse(659,310,15,7);
ellipse(670,305,7,16);
ellipse(674,325,15,5);
ellipse(694,330,7,15);
ellipse(700,351,15,7);
ellipse(717,355,8,15);
ellipse(721,372,15,7);
//otra rama negra
line(770,300,808,387);
ellipse(772,297,7,16);
ellipse(785,324,5,15);
ellipse(786,352,14,6);
//otra rama del fondo
line(760,159,796,215);
fill(#C6E3C3);
ellipse(765,175,11,6);
ellipse(778,179,6,11);
ellipse(777,194,11,6);
ellipse(787,207,11,6);
//rama con hojas naranjas que sostiene el pajarito con su pico.
line(480,93,449,172);
line(450,181,460,215);
fill(#F79346);
noStroke();
triangle(498,74,477,85,490,99);
ellipse(480,87,10,20);
ellipse(490,95,20,10);
ellipse(479,120,18,6);
ellipse(467,114,6,14);
ellipse(470,139,14,6);
ellipse(460,133,6,14);
//algunos puntitos del fondo
fill(0);
ellipse(425,100,6,5);
ellipse(500,370,3,4);
ellipse(420,330,3,3);
ellipse(750,260,2,3);
ellipse(784,165,5,5);
ellipse(580,80,3,3);
ellipse(670,350,3,3);
ellipse(700,80,3,4);
ellipse(600,60,3,3);
ellipse(600,390,4,3);
ellipse(410,30,3,3);
ellipse(460,60,3,3);
ellipse(630,300,3,3);
ellipse(790,380,4,4);
ellipse(770,340,3,3);
ellipse(425,376,3,3);
ellipse(454,390,3,3);
ellipse(430,360,4,3);
ellipse(468,20,3,3);
ellipse(516,36,4,3);
ellipse(517,309,3,4);
ellipse(540,320,3,4);
ellipse(568,350,4,3);
ellipse(525,120,5,5);
}
