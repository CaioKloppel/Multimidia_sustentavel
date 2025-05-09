import ddf.minim.*;

Minim minim;
AudioPlayer menuMusic;


class Menu {
  BotaoCircular botaoIniciar;
  Retangulo texto;
  boolean clicou;
  PImage imagemFundo = loadImage("Images/imagemMenuTeste.png");
  PImage imagemBotaoIniciar = loadImage("images/botaocircular.png");
  
  Menu(PApplet parent){
    minim = new Minim(parent);
    menuMusic = minim.loadFile("data/somMenu.mp3");
    menuMusic.loop();
    
    
    
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
    if (botaoIniciar.isClicked()) {
      clicou = true;
      stopMusic();
    }
    return clicou;
  }
  private void stopMusic(){
    menuMusic.close();
    minim.stop();
  }
}
