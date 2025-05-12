Menu menu;
QuizBackEnd quiz1;
Pergunta pergunta1;
Pontuacao pontuacao;
PImage imagemFundoPergunta1;
PImage imagemFundoBotoes;

void setup(){
  fullScreen();
  background(255);
  
  imagemFundoPergunta1 = loadImage("Images/imagemMenuTeste.png");
  PImage imagemFundoBotoes = loadImage("images/botaocircular.png");
  pontuacao = new Pontuacao();
  
  menu = new Menu(this);
  quiz1 = new QuizBackEnd(1, "teste1", "teste2", "teste3", "teste4", "teste2");
  pergunta1 = new Pergunta(imagemFundoPergunta1, imagemFundoBotoes, pontuacao, quiz1, #F70202);
}

void draw(){
  background(255); 
  if (!menu.clicouIniciar()) menu.display();
  else if (pergunta1.clicouResposta() == null) pergunta1.display();
  else if (pergunta1.clicouResposta() == false) print("ensinamento");
  else if (pergunta1.clicouResposta() == true) print("próxima fase");
}
