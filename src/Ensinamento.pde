class TelaEnsinamento {
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

    void display(int numeroQuestao) {
       int index = numeroQuestao - 1;

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
       }
       return clicou;
    }
}
