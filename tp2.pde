float posXimagen=0;
PFont Miranda;
PImage miImagen;
PFont miFuente;
float posXText;
int marcadetiempoimagen=0;
int contador;
float opacidadMapeada;
int estado=1;

PImage miImagen2;
int tamImage;
float posX,posY;
int velocidad;
PFont fuente2;

PImage miImagen3;
PFont fuente3;
float posYTexto3=-200;

PImage miImagen4;
PFont fuente4;
float posXtexto4=-100;

PImage miImagen5;
PFont fuente5;
float posXtexto5=700;


PImage miImagen6;
PFont fuente6;
float posYtexto6=500;

PFont fuente7;
float posXBoton, posYBoton;
int anchoBoton=140;
int altoBoton=50;

void setup() {
size(640,480);
Miranda=loadFont("Ravie-48.vlw");
miImagen=loadImage("MirandaPortada.png");
miFuente=loadFont("Corbel-BoldItalic-48.vlw");

miImagen2=loadImage("FotoMiranda2.png");
fuente2=loadFont("BellMTBold-48.vlw");

miImagen3=loadImage("FotoMiranda3.png");
fuente3=loadFont("ColonnaMT-48.vlw");

miImagen4=loadImage("FotoMiranda4.png");
fuente4=loadFont("SegoeUI-BoldItalic-48.vlw");

miImagen5=loadImage("FotoMiranda5.jpeg");
fuente5=loadFont("LucidaFax-Demi-48.vlw");

miImagen6=loadImage("FotoMiranda6.jpeg");
fuente6=loadFont("Harrington-48.vlw");

fuente7=loadFont("FranklinGothic-Demi-48.vlw");

textFont(miFuente);

posXimagen=0;
marcadetiempoimagen=frameCount;
posXText=-500;

tamImage=400;
posX=300;
posY=100;
velocidad=2;
textAlign(CENTER,CENTER);
}

void draw() {
contador=frameCount-marcadetiempoimagen;

// ESTADO 1
if(estado==1) {
background(#45837B);
noStroke();
fill(255,0,0);
ellipse(40,100,8,8);
ellipse(120,400,8,8);
ellipse(500,90,8,8);
ellipse(590,300,8,8);
fill(#F7DF66);
ellipse(80,200,8,8);
ellipse(300,50,8,8);
ellipse(450,420,8,8);
ellipse(620,140,8,8);
fill(255);
textFont(Miranda);
textSize(60);
text("MIRANDA!",320,50);
textFont(miFuente);
textSize(22);

if(contador<900) {
image(miImagen,posXimagen,0,410,480);
posXimagen=posXimagen+1;
}

if(contador<300) {
posXText=map(contador,0,300,-500,width/2);
fill(255);
text("Miranda! es una de las bandas más importantes del pop argentino. Desde 2001 logró destacarse por su estilo llamativo, sus canciones pegadizas y una identidad única que mezcló humor, drama y mucho ritmo.",posXText-200,80,400,300);
}
else if(contador<1000) {
opacidadMapeada=map(contador,900,1000,255,0);
fill(255,opacidadMapeada);
text("Miranda! es una de las bandas más importantes del pop argentino. Desde 2001 logró destacarse por su estilo llamativo, sus canciones pegadizas y una identidad única que mezcló humor, drama y mucho ritmo.",width/2-200,80,400,300);
}

if(contador>1000) {
estado=2;
}
}

// ESTADO 2
if(estado==2) {
background(#EDBFBF);
fill(255);
noStroke();
rect(9,28,621,110);
textFont(fuente2);
fill(#AF3A3A);
textSize(20);
text("La banda se formó en julio de 2001 en Buenos Aires. El nombre Miranda! es un homenaje al famoso actor argentino Osvaldo Miranda. Empezaron tocando en el circuito de bares de la ciudad y enseguida llamaron la atención por sus looks llamativos y canciones pegadizas.",10,17,620,120);

if(posX>=width || posX<=0) {
tamImage+=10;
velocidad*=-1;
}

posX+=velocidad;
image(miImagen2,posX,posY,400,tamImage);

if(contador>2000) {
estado=3;
}
}

// ESTADO 3
if(estado==3) {
background(#F7E275);
textFont(fuente3);
fill(255,0,0);
textSize(25);

if(posYTexto3 < 50) {
posYTexto3 = posYTexto3 + 1;
}

text("El estilo de Miranda! mezcla pop, electrónica y teatralidad. Sus videoclips, vestuarios y presentaciones siempre se destacaron por ser coloridos, exagerados y diferentes, algo que ayudó a construir la identidad única de la banda.",10,posYTexto3,350,350);

image(miImagen3,275,140,400,420);

if(contador>2500) {
estado=4;
}
}

// ESTADO 4
if(estado==4){
background(#DCEDED);
image(miImagen4,280,150,400,370);
textFont(fuente4);
fill(#68C4C6);
textSize(20);
text("En 2023, Miranda! lanzó una colaboración con Tini que unió dos generaciones del pop argentino. La canción mezcla el estilo clásico y teatral de la banda con el estilo moderno de Tini.",posXtexto4,5,300,300);

if(posXtexto4 < 10) {
posXtexto4 = posXtexto4 + 1;
}

if(contador>3100) {
estado=5;
}
}

// ESTADO 5
if(estado==5){
background(#EDE392);
image(miImagen5,10,78,350,280);
textFont(fuente5);
fill(255);
textSize(20);

text("En 2025, Miranda! también colaboró con Lali. El tema combinó la energía y personalidad, manteniendo el estilo llamativo y divertido que caracteriza a la banda.",posXtexto5,50,240,300);
if(posXtexto5 > 398) {
posXtexto5 = posXtexto5 -1;
}

if(contador>3700){
estado=6;
}
}

// ESTADO 6
if(estado==6){
background(#F2E8B5);
image(miImagen6,20,80,360,320);
textFont(fuente6);
fill(#5A5036);
textSize(25);

text("Miranda!\n sigue demostrando que el pop argentino puede ser original, divertido y diferente.",390,posYtexto6,250,200);
if (posYtexto6>90) {
posYtexto6=posYtexto6 -1;
}
if (contador>4100){
estado=7;
}
} 

// ESTADO 7
if (estado==7){
background(#45837B);
textFont(fuente7);
textSize(55);
fill(255);
text("Gracias por ver!",88,100,500,50);

// BOTÓN
fill(255);
rect(250,350,140,50);

fill(#45837B);
textSize(20);
text("REINICIAR",320,375);
}
}

void mousePressed(){
if(estado==7){
if(mouseX > 250 && mouseX < 390 &&
 mouseY > 350 && mouseY < 400){

estado=1;
contador=0;
marcadetiempoimagen=frameCount;
posXimagen=0;
posYTexto3=-200;
posXtexto4=-100;
posXtexto5=700;
posYtexto6=500;
posXText = -500;
posX = 300;
tamImage = 400;
}
}
}
