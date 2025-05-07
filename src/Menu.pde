class Menu {
  BotaoCircular botaoIniciar;
  Retangulo texto;
  boolean clicou;
  PImage imagemFundo = loadImage("Images/imagemMenu.png");
  PImage imagemBotaoIniciar = loadImage("images/botaocircular.png");
  
  Menu(){
    botaoIniciar = new BotaoCircular(imagemBotaoIniciar);
    botaoIniciar.setTamanho(300);
    botaoIniciar.setXy(width/2, 600);
    imagemFundo.resize(width,height);
  }
  
  public void display(){
    background(imagemFundo);
    botaoIniciar.display();
  }
  
  public boolean clicouIniciar() {
    if (botaoIniciar.isClicked()) clicou = true;
    return clicou;
  }
}
