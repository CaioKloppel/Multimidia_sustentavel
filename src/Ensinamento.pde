class TelaEnsinamento {
  private Minim minim;
  private AudioPlayer musicaEnsinamento;  
  private boolean firstPlay = false;

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
      minim = new Minim(parent);
      musicaEnsinamento = minim.loadFile("somQuiz.mp3");
      musicaEnsinamento.loop();
      //se quiser ajustar volume: musicaEnsinamento.setGain(-10);
      firstPlay = true;
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
      firstPlay = false;
    }
  }
}
