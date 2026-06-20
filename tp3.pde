 // Delfina Alonso - Obra N° 32 
// Comisión 3 - Legajo: 125506/3
// link del video explicativo: https://youtu.be/V4W2SbYPrrc?si=lXtS-kvpRCra2B06 
PImage fotoarte;
int cantidad = 15;  
boolean cambiarColor = false;
color colorAleatorio;
float angulo=0;
// Variables para el color random
float r = 0;
float g = 0;
float b = 0;

boolean centroDividido = false; 

void setup() {
  size(800, 400);  
  fotoarte = loadImage("32.png");
}

void keyPressed () {
  if (key == 'm' || key == 'M') {
    cambiarColor = true;
// Genera un color random cada vez que tocás la M o m
    r = random(0, 255);
   g = random(0, 255);
    b = random(0, 255);
  }
  if (key == ' ') {  
    // Se reinicia el programa al tocar la tecla espacio, las variables vuelven a estado original
    cambiarColor = false;
    r = 0;
    g = 0;
    b = 0;
    centroDividido=false;
  }
 if (key == 'r' || key == 'R') {
    centroDividido = !centroDividido;
  }
}

// Funcion propia que no retorna valor (void con parámetro)
void actualizarColor(float intensidad) { 
  float factor = intensidad / 255;

  if (cambiarColor) {
    colorAleatorio = color(r * factor, g * factor, b * factor);
  } else {
    colorAleatorio = color(0);
  }
}

// Funcion propia que retorna un valor (float con return)
float obtenerEspacio(int vueltaActual) {
  float distancia = vueltaActual * 12.0; 
  return distancia; 
}

void draw() {
  background(255); 
  image(fotoarte, 0, 0, 400, 400);
  noStroke();
  // funcion dist() para medir la distancia del mouse al centro de la obra
  float distanciaMouse = dist(mouseX, mouseY, 600, 200);
  angulo=map(mouseX,400,800,-0.15,0.15);
  
// Intensidad segun distancia del mouse
  float intensidad = map(distanciaMouse, 0, 400, 255, 100);
  
 // funcion para cambiar a un color random  
  actualizarColor(intensidad);

  pushMatrix();

translate(600, 200);
rotate(angulo);
translate(-600, -200);

//PRIMER BLOQUE (Fila de arriba - Hacia abajo)
for (int i = 0; i < cantidad; i++) {

  float desplazamiento = obtenerEspacio(i);

// Cuadrante 1
  if (i % 2 == 0) { fill(255); }
  else { fill(colorAleatorio); }

  rect(400 + desplazamiento, desplazamiento,
       200 - desplazamiento, 200 - desplazamiento);

// cuadrante 2
  if (i % 2 == 0) { fill(colorAleatorio); }
  else { fill(255); }

  rect(600, desplazamiento, 200- desplazamiento, 200 - desplazamiento);
}

//SEGUNDO BLOQUE (fila de abajo - hacia arriba)
for (int i = 0; i < cantidad; i++) {

  float desplazamiento = obtenerEspacio(i);

  // Cuadrante 3
  if (i % 2 == 0) { fill(colorAleatorio); }
  else { fill(255); }

  rect(400 + desplazamiento,
       400 - desplazamiento,
       200 - desplazamiento,
       -200 + desplazamiento);

//Cuadrante 4
  if (i % 2 == 0) { fill(255); }
  else { fill(colorAleatorio); }

  rect(600,
       400 - desplazamiento,
       200 - desplazamiento,
       -200 + desplazamiento);
}

if (centroDividido) {
  for (int fila = 0; fila < 2; fila++) {
    for (int columna = 0; columna < 2; columna++) {
      if ((fila + columna) % 2 == 0) {
        fill(colorAleatorio);
      } else {
        fill(255);
      }
      rect(585 + columna * 15,
           185 + fila * 15,
           15,
           15);
    }
  }
}
popMatrix();
}
