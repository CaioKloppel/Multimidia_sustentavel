Menu menu;
//quiz
QuizBackEnd quiz1;
QuizBackEnd quiz2;
//perguntas
Pergunta pergunta1;
Pergunta pergunta2;
//pontuacao
Pontuacao pontuacao;
PImage imagemFundoPergunta1;
PImage imagemBotaoQuestoes;
//ensinamento
TelaEnsinamento ensinamento;

void setup(){
  fullScreen();
  background(255);
  
  imagemFundoPergunta1 = loadImage("Images/questao1.jpg");
  PImage imagemBotaoQuestoes=loadImage("Images/botaoquestoes.png");
  pontuacao = new Pontuacao();
  
  ensinamento = new TelaEnsinamento(); 
ensinamento.carregarImagens(); 
  menu = new Menu(this);
  quiz1 = new QuizBackEnd(1, "a) São obtidas de recursos\n que se regeneram \nrapidamente na natureza.", "b) Têm baixo \n impacto ambiental e \n não emitem gases \n de efeito estufa.", "c) Incluem a energia solar e \n a energia hidráulica.", "d) São formadas por \n  processos naturais \n muito lentos e podem \n se esgotar.", "d) São formadas por processos \n naturais muito lentos e \n podem se esgotar.");
  pergunta1 = new Pergunta(imagemFundoPergunta1, imagemBotaoQuestoes, pontuacao, quiz1, #030000);
  quiz2= new QuizBackEnd(2,"a","b","c","d","d");
  pergunta2= new Pergunta(imagemFundoPergunta1, imagemBotaoQuestoes, pontuacao, quiz2, #030000);
}

void draw(){
  background(255); 
  if (!menu.clicouIniciar()) menu.display();
  else if (pergunta1.clicouResposta() == null) pergunta1.display();
  else if (pergunta1.clicouResposta() == false) {
    print("ensinamento");
    //ta dando erro em verificar 
    ensinamento.display(1); 
  }
  else if (pergunta1.clicouResposta() == true) print("próxima fase");

}
