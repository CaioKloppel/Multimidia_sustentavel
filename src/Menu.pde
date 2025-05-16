import ddf.minim.*;

class Menu {
  Minim minim;
  AudioPlayer menuMusic;
  BotaoCircular botaoIniciar;
  boolean clicou;
  boolean first;
  PImage imagemFundo = loadImage("Images/imagemMenuTeste.png");
  PImage imagemBotaoIniciar = loadImage("images/botaocircular.png");
  
  Menu(){
    botaoIniciar = new BotaoCircular(imagemBotaoIniciar);
    botaoIniciar.setTamanho(width/6);
    botaoIniciar.setXy(width/2.1, height/2);
    imagemFundo.resize(width,height);
  }
  
  public void display(PApplet parent){
    background(imagemFundo);
    if (!first){
    minim = new Minim(parent);
    menuMusic = minim.loadFile("somMenu.mp3");
    
    menuMusic.loop();
    first = true;
    }
    botaoIniciar.display();
  }
  
  public boolean clicouIniciar() {
    clicou = false;
    if (botaoIniciar.isClicked()) {
      clicou = true;
      first = false;
      stopMusic();
    }
    return clicou;
  }
  private void stopMusic(){
    menuMusic.close();
    minim.stop();
  }
}
