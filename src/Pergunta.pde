class Pergunta{
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
    
    botaoPergunta1.setTamanho(width/6.4);
    botaoPergunta2.setTamanho(width/6.4);
    botaoPergunta3.setTamanho(width/6.4);
    botaoPergunta4.setTamanho(width/6.4);
    
    botaoPergunta1.setXy((width/5)*2 - (width/6.4)/2, (height/5)*2.5 - (width/6.4)/4);
    botaoPergunta2.setXy((width/5)*4 - (width/6.4)/2, (height/5)*2.5 - (width/6.4)/4);
    botaoPergunta3.setXy((width/5)*2 - (width/6.4)/2, (height/5)*4 - (width/6.4)/4);
    botaoPergunta4.setXy((width/5)*4 - (width/6.4)/2, (height/5)*4 - (width/6.4)/4);
    
    botaoPergunta1.setStringForma(quiz.getAlternativaA());
    botaoPergunta2.setStringForma(quiz.getAlternativaB());
    botaoPergunta3.setStringForma(quiz.getAlternativaC());
    botaoPergunta4.setStringForma(quiz.getAlternativaD());
    
    botaoPergunta1.setFonte("Myanmar Text", 15);
    botaoPergunta2.setFonte("Myanmar Text", 15);
    botaoPergunta3.setFonte("Myanmar Text", 15);
    botaoPergunta4.setFonte("Myanmar Text", 15);
    
    botaoPergunta1.setCorTexto(corTexto);
    botaoPergunta2.setCorTexto(corTexto);
    botaoPergunta3.setCorTexto(corTexto);
    botaoPergunta4.setCorTexto(corTexto);
  }
  
  public void display(){
    background(imagemFundo);
    botaoPergunta1.display();
    botaoPergunta2.display();
    botaoPergunta3.display();
    botaoPergunta4.display();
  }
  
  public Boolean clicouResposta() {
    if (botaoPergunta1.isClicked()) {
      if (botaoPergunta1.getStringForma().equals(quiz.getAlternativaCorreta())){
         pontuacao.somaPontuacao(50);
      } clicou = botaoPergunta1.getStringForma().equals(quiz.getAlternativaCorreta());
    }
    else if (botaoPergunta2.isClicked()){
      if (botaoPergunta2.getStringForma().equals(quiz.getAlternativaCorreta())){
         pontuacao.somaPontuacao(50);
      } clicou = botaoPergunta2.getStringForma().equals(quiz.getAlternativaCorreta());
    }
    else if (botaoPergunta3.isClicked()){
      if (botaoPergunta3.getStringForma().equals(quiz.getAlternativaCorreta())){
         pontuacao.somaPontuacao(50);
      } clicou = botaoPergunta3.getStringForma().equals(quiz.getAlternativaCorreta());
    }
    else if (botaoPergunta4.isClicked()){
      if (botaoPergunta4.getStringForma().equals(quiz.getAlternativaCorreta())){
         pontuacao.somaPontuacao(50);
      } clicou = botaoPergunta4.getStringForma().equals(quiz.getAlternativaCorreta());
    }
    return clicou;
  }
}
