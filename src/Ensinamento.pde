class TelaEnsinamento {
  private Minim minim;
  private AudioPlayer musicaEnsinamento;  
  private boolean firstPlay = false;
  private int tempoInicial = 0;
  private final int DELAY_MUSICA = 1000; // 1 segundo de delay

  PImage[] imagensEnsinamento = new PImage[10];
  PImage imagemBotao;
  BotaoCircular continuar;
  boolean clicou;  
   
   
   TelaEnsinamento(){
      for (int i = 0; i < imagensEnsinamento.length; i++) {
          imagensEnsinamento[i] = loadImage("Images/imgEnsinamentoQuestao" + (i + 1) + ".jpg");
      }
      imagemBotao = loadImage("images/imagemBotaoContinuar.png");
      continuar = new BotaoCircular(imagemBotao);
      continuar.setXy(width/1.35, height/4);
      continuar.setTamanho(width/10);
  }

  
  void display(int numeroQuestao, PApplet parent) {
    int index = numeroQuestao - 1;

    if (!firstPlay) {
      tempoInicial = millis();  //tempo inicial da musica
      firstPlay = true;
    }

    if (millis() - tempoInicial >= DELAY_MUSICA && musicaEnsinamento == null) {
      minim = new Minim(parent);
      musicaEnsinamento = minim.loadFile("musicaEnsinamento.mp3");  
      musicaEnsinamento.loop();
    }

    if (index >= 0 && index < imagensEnsinamento.length) {
      if (imagensEnsinamento[index] != null) {
        imagensEnsinamento[index].resize(width, height);
        background(imagensEnsinamento[index]);
      }
    }
    continuar.display();
  }

  public boolean clicouContinuar() {
    clicou = false;
    if (continuar.isClicked()) {
      clicou = true;
      stopMusic();
    }
    return clicou;
  }

  private void stopMusic() {
    if (musicaEnsinamento != null) {
      musicaEnsinamento.close();
      minim.stop();
      musicaEnsinamento = null;
      firstPlay = false;
    }
  }
}
