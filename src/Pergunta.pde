import ddf.minim.*;

class Pergunta{
  private Minim minim;
  private AudioPlayer quizMusic;
  private AudioPlayer soundCorreto;
  private AudioPlayer soundErrado;
  private boolean firstPlay = false;

  PImage imagemFundo;
  PImage imagemFundoBotao;
  Pontuacao pontuacaoAtual;
  QuizBackEnd quiz;
  color corTexto;
  Boolean clicou;
  BotaoRetangular botaoPergunta1;
  BotaoRetangular botaoPergunta2;
  BotaoRetangular botaoPergunta3;
  BotaoRetangular botaoPergunta4;
  
  public Pergunta(PImage imagemFundo, PImage imagemFundoBotao, Pontuacao pontuacaoAtual, QuizBackEnd quiz, color corTexto){
    this.imagemFundo = imagemFundo;
    this.imagemFundoBotao = imagemFundoBotao;
    this.pontuacaoAtual = pontuacaoAtual;
    this.quiz = quiz;
    this.corTexto = corTexto;
    
    imagemFundo.resize(width, height);
    
    botaoPergunta1 = new BotaoRetangular(imagemFundoBotao);
    botaoPergunta2 = new BotaoRetangular(imagemFundoBotao);
    botaoPergunta3 = new BotaoRetangular(imagemFundoBotao);
    botaoPergunta4 = new BotaoRetangular(imagemFundoBotao);
    
    botaoPergunta1.setTamanho(width/4);
    botaoPergunta2.setTamanho(width/4);
    botaoPergunta3.setTamanho(width/4);
    botaoPergunta4.setTamanho(width/4);
    
    botaoPergunta1.setXy((width/5)*2 - (width/4)/2, (height/5)*3 - (width/4)/4);
    botaoPergunta2.setXy((width/5)*4 - (width/4)/2, (height/5)*3 - (width/4)/4);
    botaoPergunta3.setXy((width/5)*2 - (width/4)/2, (height/5)*4.5 - (width/4)/4);
    botaoPergunta4.setXy((width/5)*4 - (width/4)/2, (height/5)*4.5 - (width/4)/4);
    
    botaoPergunta1.setStringForma(quiz.getAlternativaA());
    botaoPergunta2.setStringForma(quiz.getAlternativaB());
    botaoPergunta3.setStringForma(quiz.getAlternativaC());
    botaoPergunta4.setStringForma(quiz.getAlternativaD());
    
    if (botaoPergunta1.getStringForma().length() < 90) botaoPergunta1.setFonte("Comic Sans MS", 32); else botaoPergunta1.setFonte("Comic Sans MS", 23);
    if (botaoPergunta2.getStringForma().length() < 90) botaoPergunta2.setFonte("Comic Sans MS", 32); else botaoPergunta2.setFonte("Comic Sans MS", 23);
    if (botaoPergunta3.getStringForma().length() < 90) botaoPergunta3.setFonte("Comic Sans MS", 32); else botaoPergunta3.setFonte("Comic Sans MS", 23);
    if (botaoPergunta4.getStringForma().length() < 90) botaoPergunta4.setFonte("Comic Sans MS", 32); else botaoPergunta4.setFonte("Comic Sans MS", 23);
    
    botaoPergunta1.setCorTexto(corTexto);
    botaoPergunta2.setCorTexto(corTexto);
    botaoPergunta3.setCorTexto(corTexto);
    botaoPergunta4.setCorTexto(corTexto);
  }
  
  public void display(PApplet parent){
    // inicia audio apenas na primeira exibição
    if (!firstPlay) {
      minim = new Minim(parent);
      quizMusic = minim.loadFile("somQuiz.mp3");  
      quizMusic.loop();  
      soundCorreto = minim.loadFile("Correto.mp3");
      soundErrado  = minim.loadFile("Errado.mp3");
      firstPlay    = true;
    }
    
    
    parent.background(imagemFundo);
    botaoPergunta1.display();
    botaoPergunta2.display();
    botaoPergunta3.display();
    botaoPergunta4.display();
  }
  
  public Boolean clicouResposta() {
    clicou = null;
    if (botaoPergunta1.isClicked()) {
      clicou = botaoPergunta1.getStringForma().equals(quiz.getAlternativaCorreta());
      if (clicou) {
        pontuacaoAtual.somaPontuacao(50);
        soundCorreto.rewind();
        soundCorreto.play();
      } else {
        soundErrado.rewind();
        soundErrado.play();
      }
    }
    else if (botaoPergunta2.isClicked()) {
      clicou = botaoPergunta2.getStringForma().equals(quiz.getAlternativaCorreta());
      if (clicou) {
        pontuacaoAtual.somaPontuacao(50);
        soundCorreto.rewind();
        soundCorreto.play();
      } else {
        soundErrado.rewind();
        soundErrado.play();
      }
    }
    else if (botaoPergunta3.isClicked()) {
      clicou = botaoPergunta3.getStringForma().equals(quiz.getAlternativaCorreta());
      if (clicou) {
        pontuacaoAtual.somaPontuacao(50);
        soundCorreto.rewind();
        soundCorreto.play();
      } else {
        soundErrado.rewind();
        soundErrado.play();
      }
    }
    else if (botaoPergunta4.isClicked()) {
      clicou = botaoPergunta4.getStringForma().equals(quiz.getAlternativaCorreta());
      if (clicou) {
        pontuacaoAtual.somaPontuacao(50);
        soundCorreto.rewind();
        soundCorreto.play();
      } else {
        soundErrado.rewind();
        soundErrado.play();
      }
    }
    // para só a música de fundo, mantendo efeitos ativos
    if (clicou != null) stopBackgroundMusic();
    return clicou;
  }

  // para apenas a música de fundo
  public void stopBackgroundMusic() {
    if (quizMusic != null) {
      quizMusic.close();
      firstPlay = false;
    }
  }
}
