class TelaAcerto {
  PImage imagemAcerto;
  PImage imagemContinuar;
  BotaoCircular botaoContinuar;
  boolean clicou;
  
  TelaAcerto(){
    imagemAcerto = loadImage("images/imagemAcerto.jpg");
    imagemAcerto.resize(width, height);
    imagemContinuar = loadImage("images/imagemContinuarAcerto.png");
    botaoContinuar = new BotaoCircular(imagemContinuar);
    botaoContinuar.setTamanho(width/6);
    botaoContinuar.setXy(width/2, height/1.8);
  }
  
  void display(){
    background(imagemAcerto);
    botaoContinuar.display();
  }
  
  public boolean clicouContinuar() {
       return botaoContinuar.isClicked();
    }
}
