class TelaFinal {
    PImage imagem500, imagemAlto, imagemMedio, imagemBaixo;
    BotaoCircular botaoContinuar;
    Pontuacao pontuacao;
    PImage imagemExibida, imgBotao;
    boolean showVideo;


    TelaFinal(Pontuacao pontuacaoUsuario) {
        this.pontuacao = pontuacaoUsuario;
        
        imagem500 = loadImage("images/imagemFinal500.png");
        imagemAlto = loadImage("images/imagemFinalMaxima.png");      
        imagemMedio = loadImage("images/imagemFinalMedia.png");    
        imagemBaixo = loadImage("images/imagemFinalBaixa.png");    

        if (pontuacao.getPontuacao() == 500){
            imagemExibida = imagem500;
            imgBotao = loadImage("images/botaoFinal500.png");
        } else if (pontuacao.getPontuacao() > 350) {
            imagemExibida = imagemAlto;
            imgBotao = loadImage("images/botaoFinalMaximo.png");
        } else if (pontuacao.getPontuacao() > 200) {
            imagemExibida = imagemMedio;
            imgBotao = loadImage("images/botaoFinalMedio.png");
        } else {
            imagemExibida = imagemBaixo;
            imgBotao = loadImage("images/botaoFinalBaixo.png");
        }
        imagemExibida.resize(width, height);
        botaoContinuar = new BotaoCircular(imgBotao);
        botaoContinuar.setTamanho(width/8);
        botaoContinuar.setXy(width/2, height * 0.8);
    }




  void display() {
      background(imagemExibida);
      botaoContinuar.display(); 
  }


  boolean clicouContinuar() {
    return botaoContinuar.isClicked();
  }
}
