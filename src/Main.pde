Retangulo retangulo = new Retangulo();
Quadrado quadrado = new Quadrado();
Circulo circulo = new Circulo();
Triangulo triangulo = new Triangulo();
PImage imgRet, imgCirc;
BotaoRetangular botaoRet;
BotaoCircular botaoCirc;
int x = 100;

void setup(){
  fullScreen();
  background(255);
  
  imgRet = loadImage("images/recruta.jpg");
  imgCirc = loadImage("images/recruta.jpg");
  
  botaoRet = new BotaoRetangular(imgRet);
  botaoCirc = new BotaoCircular(imgCirc);

  botaoRet.setXy(500, 300);
  botaoRet.setTamanho(100);
  botaoCirc.setXy(300, 300);
  botaoCirc.setTamanho(100);
  
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
  if (botaoRet.isClicked()) {
    println("Botão Retangular clicado!");
    // Adicione aqui o que deve acontecer quando o botão retangular for clicado
  }
  
  if (botaoCirc.isClicked()) {
    println("Botão Circular clicado!");
    // Adicione aqui o que deve acontecer quando o botão circular for clicado
  }
  
  botaoRet.display();
  botaoCirc.display();
  botaoCirc.moveX(1);
  botaoRet.moveX(1);
}
