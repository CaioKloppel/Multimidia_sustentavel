public class QuizBackEnd {
  private int numeroQuestao;
  private String alternativaCorreta;
  private String alternativaA;
  private String alternativaB;
  private String alternativaC;
  private String alternativaD;
  
  
  // Method p/ config tds alternativas e o num da questão
  public QuizBackEnd(int numeroQuestao, String alternativaA, String alternativaB, String alternativaC, String alternativaD, String alternativaCorreta) {
    this.numeroQuestao = numeroQuestao;
    this.alternativaA = alternativaA;
    this.alternativaB = alternativaB;
    this.alternativaC = alternativaC;
    this.alternativaD = alternativaD;
    this.alternativaCorreta = alternativaCorreta;
  }

  public String getAlternativaCorreta() {
    return alternativaCorreta;
  }


  public String getAlternativaA(){
    return alternativaA;
  }

  public String getAlternativaB(){
    return alternativaB;
  }
  
  public String getAlternativaC(){
    return alternativaC;
  }
  
  public String getAlternativaD(){
    return alternativaD;
  }
  
  public int getNumeroQuestao(){
    return numeroQuestao;
  }
}
