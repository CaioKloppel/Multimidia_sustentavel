public class QuizBackEnd {
  private int numeroQuestao;
  private String letraAlternativaCorreta;
  private String alternativaA;
  private String alternativaB;
  private String alternativaC;
  private String alternativaD;

  // Set letra alternativa correta
  public void setLetraAlternativaCorreta(String letra) {
    if (letra.equals("A") || letra.equals("B") || letra.equals("C") || letra.equals("D")) {
      letraAlternativaCorreta = letra;
    }
  }

  // Set numero questao
  public void setNumeroQuestao(int numeroQuestao) {
    this.numeroQuestao = numeroQuestao;
  }

  // Set texto alternativa
  public void setTextoAlternativa(String letraAlternativa, String textoAlternativa) {
    if (letraAlternativa.equals("A")) {
      alternativaA = textoAlternativa;
    } else if (letraAlternativa.equals("B")) {
      alternativaB = textoAlternativa;
    } else if (letraAlternativa.equals("C")) {
      alternativaC = textoAlternativa;
    } else if (letraAlternativa.equals("D")) {
      alternativaD = textoAlternativa;
    }
  }

  // Method p/ config tds alternativas e o num da questão
  public void configurarQuestao(int numeroQuestao, String alternativaA, String alternativaB, String alternativaC, String alternativaD, String letraCorreta) {
    this.numeroQuestao = numeroQuestao;
    this.alternativaA = alternativaA;
    this.alternativaB = alternativaB;
    this.alternativaC = alternativaC;
    this.alternativaD = alternativaD;
    setLetraAlternativaCorreta(letraCorreta);
  }

  // Verificador da resposta
  public boolean checarResposta(String respostaUsuario) {
    return respostaUsuario.equals(letraAlternativaCorreta);
  }

  // Get alternativa correta
  public String obterAlternativaCorreta() {
    return letraAlternativaCorreta;
  }
}
