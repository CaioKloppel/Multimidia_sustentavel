class TelaFinal {
    PImage imagemAlto, imagemMedio, imagemBaixo;
    Movie videoParabens;
    BotaoCircular botaoContinuar;
    Pontuacao pontuacao;
    PImage imagemExibida;
    boolean showVideo;


    TelaFinal(Pontuacao pontuacaoUsuario, Movie video) {
        this.pontuacao = pontuacaoUsuario;
        showVideo = (pontuacao.getPontuacao() == 500);

        if (showVideo) {
        
            videoParabens = video;
            videoParabens.loop();
            
        } else {
           
            imagemAlto = loadImage("images/imagemFinalMaxima.png");      
            imagemMedio = loadImage("images/imagemFinalMedia.png");    
            imagemBaixo = loadImage("images/imagemFinalBaixa.png");    

            if (pontuacao.getPontuacao() > 350) {
                imagemExibida = imagemAlto;
            } else if (pontuacao.getPontuacao() > 200) {
                imagemExibida = imagemMedio;
            } else {
                imagemExibida = imagemBaixo;
            }
            imagemExibida.resize(width, height);
        }

        PImage imgBotao = loadImage("images/imagemBotaoContinuar.png");
        botaoContinuar = new BotaoCircular(imgBotao);
        botaoContinuar.setTamanho(width/6);
        botaoContinuar.setXy(width/2, height * 0.8);
    }

    void initVideo() {
    if (showVideo) {
      videoParabens.play();
    }
  }


  void display() {
    if (showVideo) {
      if (videoParabens.time() <= videoParabens.duration()){
        imageMode(CENTER);
        image(videoParabens, width/2, height/2, width, height);
      } else{
        videoParabens.stop();
        background(0);
        botaoContinuar.display();
      }
    } else {
      background(imagemExibida);
      botaoContinuar.display();
    }
  }


  boolean clicouContinuar() {
    return botaoContinuar.isClicked();
  }
}
