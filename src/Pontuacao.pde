class Pontuacao{
  private int pontuacao;
  
  public int getPontuacao(){
     return pontuacao; 
  }
  
  public void setPontuacao(int pontuacao){
     this.pontuacao = pontuacao;
  }
  
  public void somaPontuacao(int pontuacao){
    this.pontuacao += pontuacao;
  }
  
  public void reset(){
    pontuacao = 0;
  }
}
