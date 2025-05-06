Retangulo retangulo = new Retangulo();
Quadrado quadrado = new Quadrado();
Circulo circulo = new Circulo();
Triangulo triangulo = new Triangulo();
int x = 100;

void setup(){
  fullScreen();
  background(255);
  
  quadrado.setTamanho(300);
  quadrado.setXy(500, 200);
  quadrado.setCor(224, 36, 36);
  
  retangulo.setTamanho(300);
  retangulo.setXy(1000, 400);
  retangulo.setCor(224, 36, 36);
  retangulo.center();
  
  circulo.setTamanho(300);
  circulo.setXy(1500, 400);
  circulo.setCor(224, 36, 36);
  
  triangulo.setTamanho(300);
  triangulo.setXy(200, 400);
  triangulo.setCor(224, 36, 36);
}

void draw(){
  background(255); 
  if (x > 0) {triangulo.displayGirando(0.02);} else {triangulo.displayParar();} 
  if (x > 0) {quadrado.displayGirando(0.02);} else {quadrado.displayParar();} 
  if (x > 0) {retangulo.displayGirando(0.02);} else {retangulo.displayParar();} 
  x--;
}
