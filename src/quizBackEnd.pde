public class QuizBackEnd {
  private String alternativaCorreta;
  private String alternativaA;
  private String alternativaB;
  private String alternativaC;
  private String alternativaD;
  
  
  // Method p/ config tds alternativas e o num da questão
  public QuizBackEnd(String alternativaA, String alternativaB, String alternativaC, String alternativaD, String alternativaCorreta) {
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
}
