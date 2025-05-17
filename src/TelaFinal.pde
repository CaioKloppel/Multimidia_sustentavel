class TelaFinal {
    PImage imagem500, imagemAlto, imagemMedio, imagemBaixo;
    BotaoCircular botaoContinuar;
    Pontuacao pontuacao;
    PImage imagemExibida, imgBotao;
    AudioPlayer soundFinal;
    Minim minim;
    boolean firstPlay = false;
    boolean continuarClicado = false;

    TelaFinal(Pontuacao pontuacaoUsuario, PApplet parent) {
        this.pontuacao = pontuacaoUsuario;

        minim = new Minim(parent);
        imagem500 = loadImage("images/imagemFinal500.png");
        imagemAlto = loadImage("images/imagemFinalMaxima.png");      
        imagemMedio = loadImage("images/imagemFinalMedia.png");    
        imagemBaixo = loadImage("images/imagemFinalBaixa.png");    

        if (pontuacao.getPontuacao() == 500){
            imagemExibida = imagem500;
            imgBotao = loadImage("images/botaoFinal500.png");
            soundFinal = minim.loadFile("imagem500Sound.mp3");
        } else if (pontuacao.getPontuacao() > 350) {
            imagemExibida = imagemAlto;
            imgBotao = loadImage("images/botaoFinalMaximo.png");
            soundFinal = minim.loadFile("imagemMaximaSound.mp3");
            soundFinal.setGain(+160);
        } else if (pontuacao.getPontuacao() > 200) {
            imagemExibida = imagemMedio;
            imgBotao = loadImage("images/botaoFinalMedio.png");
            soundFinal = minim.loadFile("imagemMediaSound.mp3");
        } else {
            imagemExibida = imagemBaixo;
            imgBotao = loadImage("images/botaoFinalBaixo.png");
            soundFinal = minim.loadFile("imagemBaixaSound.mp3");
        }

        imagemExibida.resize(width, height);
        botaoContinuar = new BotaoCircular(imgBotao);
        botaoContinuar.setTamanho(width/8);
        botaoContinuar.setXy(width/2, height * 0.8);
    }

    void display() {
        background(imagemExibida);
        botaoContinuar.display(); 
        if (!firstPlay) {
            soundFinal.play();
            firstPlay = true;
        }

        if (botaoContinuar.isClicked() && !continuarClicado) {
            stopSound();
            continuarClicado = true;
        }
    }

    boolean clicouContinuar() {
        return continuarClicado;
    }

    void stopSound() {
        if (soundFinal != null) {
            soundFinal.close();
            minim.stop();
        }
    }
}
