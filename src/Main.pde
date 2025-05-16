Menu menu;
//quiz
QuizBackEnd quiz1;
QuizBackEnd quiz2;
QuizBackEnd quiz3;
QuizBackEnd quiz4;
QuizBackEnd quiz5;
QuizBackEnd quiz6;
QuizBackEnd quiz7;
QuizBackEnd quiz8;
QuizBackEnd quiz9;
QuizBackEnd quiz10;
//perguntas
Pergunta pergunta1;
Pergunta pergunta2;
Pergunta pergunta3;
Pergunta pergunta4;
Pergunta pergunta5;
Pergunta pergunta6;
Pergunta pergunta7;
Pergunta pergunta8;
Pergunta pergunta9;
Pergunta pergunta10;
//pontuacao
Pontuacao pontuacao;
//imagens de fundo das perguntas
PImage imagemFundoPergunta1;
PImage imagemFundoPergunta2;
PImage imagemFundoPergunta3;
PImage imagemFundoPergunta4;
PImage imagemFundoPergunta5;
PImage imagemFundoPergunta6;
PImage imagemFundoPergunta7;
PImage imagemFundoPergunta8;
PImage imagemFundoPergunta9;
PImage imagemFundoPergunta10;
//imagem de fundo botões
PImage imagemBotaoQuestoes;
//ensinamento
TelaEnsinamento ensinamento;
//tela de acerto
TelaAcerto acerto;
//tela final
TelaFinal telaFinal;
//fase do game
int estado;

void setup(){
  fullScreen();
  background(255);
  
  //imagens das perguntas
  imagemFundoPergunta1 = loadImage("Images/questao1.jpg");
  imagemFundoPergunta2 = loadImage("Images/questao2.jpg");
  imagemFundoPergunta3 = loadImage("Images/questao3.jpg");
  imagemFundoPergunta4 = loadImage("Images/questao1_animais.jpg");
  imagemFundoPergunta5 = loadImage("Images/questao2_animais.jpg");
  imagemFundoPergunta6 = loadImage("Images/questao1_lixo.jpg");
  imagemFundoPergunta7 = loadImage("Images/questao2_lixo.jpg");
  imagemFundoPergunta8 = loadImage("Images/questao1_reciclagem_do_lixo.jpg");
  imagemFundoPergunta9 = loadImage("Images/questao2_reciclagem_do_lixo.jpg");
  imagemFundoPergunta10 = loadImage("Images/questao3_reciclagem_do_lixo.jpg");
  //imagem usada de fundo nos botões das questões
  PImage imagemBotaoQuestoes=loadImage("Images/botaoquestoes.png");
  //setando pontuação
  pontuacao = new Pontuacao();
  pontuacao.setPontuacao(0);
  
  ensinamento = new TelaEnsinamento(); 
  
  acerto = new TelaAcerto();
  
  menu = new Menu();
  
  quiz1 = new QuizBackEnd(
  "A) São obtidas de recursos\n que se regeneram \nrapidamente na natureza.",
  "B) Têm baixo \n impacto ambiental e \n não emitem gases \n de efeito estufa.",
  "C) Incluem a energia solar e \n a energia hidráulica.",
  "D) São formadas por \n  processos naturais \n muito lentos e podem \n se esgotar.",
  "D) São formadas por \n  processos naturais \n muito lentos e podem \n se esgotar."
  );
  pergunta1 = new Pergunta(imagemFundoPergunta1, imagemBotaoQuestoes, pontuacao, quiz1, #333333);
  
  quiz2 = new QuizBackEnd(
  "A) Carvão mineral",
  "B) Gás natural",
  "C) Energia solar",
  "D) Petróleo",
  "C) Energia solar"
  );
  pergunta2= new Pergunta(imagemFundoPergunta2, imagemBotaoQuestoes, pontuacao, quiz2, #333333);
  
  quiz3 = new QuizBackEnd(
  "A) Elas são infinitas e\n podem ser utilizadas sem\n preocupações ambientais.",
  "B) São formadas por\n processos rápidos da\n natureza e estão amplamente\n disponíveis.",
  "C) Podem causar impactos\n ambientais devido à emissão\n de poluentes e gases do\n efeito estufa.",
  "D) Incluem a energia solar\n e a energia das marés, que\n são limpas e sustentáveis.",
  "C) Podem causar impactos\n ambientais devido à emissão\n de poluentes e gases do\n efeito estufa."
  );
  pergunta3= new Pergunta(imagemFundoPergunta3, imagemBotaoQuestoes, pontuacao, quiz3, #333333);
  
  quiz4 = new QuizBackEnd(
  "A) Promovem o aumento da\n biodiversidade ao criar novos\n ambientes para os animais\n viverem.",
  "B) Reduzem o risco de\n desastres ambientais, como\n vazamentos e poluição\n atmosférica.",
  "C) Contribuem para o\n equilíbrio térmico do planeta,\n beneficiando a adaptação de\n espécies.",
  "D) Provocam poluição do ar,\n contaminação da água e solo,\n além de contribuírem para as\n mudanças climáticas que\n afetam diretamente os habitats\n e a sobrevivência de muitas\n espécies.",
  "D) Provocam poluição do ar,\n contaminação da água e solo,\n além de contribuírem para as\n mudanças climáticas que\n afetam diretamente os habitats\n e a sobrevivência de muitas\n espécies."
  );
  pergunta4= new Pergunta(imagemFundoPergunta4, imagemBotaoQuestoes, pontuacao, quiz4, #333333);
  
  quiz5 = new QuizBackEnd(
  "A) O petróleo forma uma\n camada protetora na água que\n ajuda a conservar o calor para\n os organismos marinhos.",
  "B) O petróleo se dissolve\n rapidamente na água do mar,\n sem causar danos aos seres\n vivos.",
  "C) O petróleo adere ao corpo\n dos animais, como aves e\n mamíferos marinhos,\n dificultando a locomoção,\n respiração e regulação térmica,\n além de contaminar a água e\n os alimentos.",
  "D) A presença de petróleo no\n mar reduz a salinidade da água,\n o que é benéfico para a maioria\n das espécies.",
  "C) O petróleo adere ao corpo\n dos animais, como aves e\n mamíferos marinhos,\n dificultando a locomoção,\n respiração e regulação térmica,\n além de contaminar a água e\n os alimentos."
  );
  pergunta5= new Pergunta(imagemFundoPergunta5, imagemBotaoQuestoes, pontuacao, quiz5, #333333);
  
  quiz6 = new QuizBackEnd(
  "A) Eles passam a evitar\n totalmente as regiões onde há\n lixo, mantendo-se em\n segurança.",
  "B) Os resíduos sólidos ajudam\n a formar novos habitats\n naturais, beneficiando a fauna\n marinha.",
  "C) Os plásticos descartados se\n transformam rapidamente em\n nutrientes para os peixes e\n corais.",
  "D) Animais marinhos podem\n confundir plásticos com\n alimento, ingerindo-os e\n sofrendo problemas de saúde\n ou até a morte.",
  "D) Animais marinhos podem\n confundir plásticos com\n alimento, ingerindo-os e\n sofrendo problemas de saúde\n ou até a morte."
  );
  pergunta6= new Pergunta(imagemFundoPergunta6, imagemBotaoQuestoes, pontuacao, quiz6, #333333);
  
  quiz7 = new QuizBackEnd(
  "A) A poluição do ar\n contribui para a melhoria do\n sistema respiratório de aves e\n mamíferos.",
  "B) O desmatamento amplia\n os habitats naturais dos\n animais, favorecendo a\n reprodução das espécies.",
  "C) As mudanças climáticas\n afetam os ciclos de migração,\n alimentação e reprodução de\n várias espécies animais.",
  "D) O aquecimento global\n tem permitido que os animais\n vivam mais tempo nas regiões\n tropicais.",
  "C) As mudanças climáticas\n afetam os ciclos de migração,\n alimentação e reprodução de\n várias espécies animais."
  );
  pergunta7= new Pergunta(imagemFundoPergunta7, imagemBotaoQuestoes, pontuacao, quiz7, #333333);
  
  quiz8 = new QuizBackEnd(
  "A) O descarte inadequado de\n lixo ajuda o meio ambiente,\n deixando o solo mais rico em\n nutrientes, pois são consumidos\n por microrganismos.",
  "B) O descarte inadequado do\n lixo prejudica seriamente o solo\n e entopem os bueiros, podendo\n causar alagamentos.",
  "C) Esses desastres são causados\n unicamente pela natureza, sem\n interferência das pessoas.",
  "D) Isso não pode ser totalmente\n evitado, pois são coisas que\n acontecem normalmente no meio\n ambiente, e por isso, não tem\n tanta importância.",
  "B) O descarte inadequado do\n lixo prejudica seriamente o solo\n e entopem os bueiros, podendo\n causar alagamentos."
  );
  pergunta8= new Pergunta(imagemFundoPergunta8, imagemBotaoQuestoes, pontuacao, quiz8, #333333);
  
  quiz9 = new QuizBackEnd(
  "A) Aumenta o consumo de\n energia elétrica",
  "B) Evita a emissão de gases\n do efeito estufa",
  "C) Reduz o custo do petróleo\n bruto",
  "D) Elimina completamente a\n necessidade de mineração",
  "B) Evita a emissão de gases\n do efeito estufa"
  );
  pergunta9= new Pergunta(imagemFundoPergunta9, imagemBotaoQuestoes, pontuacao, quiz9, #333333);
  
  quiz10 = new QuizBackEnd(
  "A) Apenas peças de decoração",
  "B) Somente novas garrafas",
  "C) Qualquer tipo de vidro,\n inclusive com diferentes cores",
  "D) Novos produtos de vidro,\n como garrafas e potes",
  "D) Novos produtos de vidro,\n como garrafas e potes"
  );
  pergunta10= new Pergunta(imagemFundoPergunta10, imagemBotaoQuestoes, pontuacao, quiz10, #333333);
  
  estado = 0;
}

void draw(){
  background(255); 
  switch (estado) {
  case 0:
    menu.display(this);
    if (menu.clicouIniciar()) estado = 1;
    break;

  case 1:
    pergunta1.display();
    Boolean resposta1 = pergunta1.clicouResposta();
    if (resposta1 != null) {
      if (resposta1) estado = 22;
      else estado = 2;
    }
    break;

  case 22:
    acerto.display();
    if (acerto.clicouContinuar()) estado = 3;
    break;

  case 2:
    ensinamento.display(1);
    if (ensinamento.clicouContinuar()) estado = 3;
    break;

  case 3:
    pergunta2.display();
    Boolean resposta2 = pergunta2.clicouResposta();
    if (resposta2 != null) {
      if (resposta2) estado = 23;
      else estado = 4;
    }
    break;

  case 23:
    acerto.display();
    if (acerto.clicouContinuar()) estado = 5;
    break;

  case 4:
    ensinamento.display(2); 
    if (ensinamento.clicouContinuar()) estado = 5;
    break;

  case 5:
    pergunta3.display();
    Boolean resposta3 = pergunta3.clicouResposta();
    if (resposta3 != null) {
      if (resposta3) estado = 24;
      else estado = 6;
    }
    break;

  case 24: 
    acerto.display();
    if (acerto.clicouContinuar()) estado = 7;
    break;

  case 6:
    ensinamento.display(3);
    if (ensinamento.clicouContinuar()) estado = 7;
    break;

  case 7:
    pergunta4.display();
    Boolean resposta4 = pergunta4.clicouResposta();
    if (resposta4 != null) {
      if (resposta4) estado = 25;
      else estado = 8;
    }
    break;

  case 25: 
    acerto.display();
    if (acerto.clicouContinuar()) estado = 9;
    break;

  case 8:
    ensinamento.display(4);
    if (ensinamento.clicouContinuar()) estado = 9;
    break;

  case 9:
    pergunta5.display();
    Boolean resposta5 = pergunta5.clicouResposta();
    if (resposta5 != null) {
      if (resposta5) estado = 26;
      else estado = 10;
    }
    break;

  case 26:
    acerto.display();
    if (acerto.clicouContinuar()) estado = 11;
    break;

  case 10:
    ensinamento.display(5);
    if (ensinamento.clicouContinuar()) estado = 11;
    break;

  case 11:
    pergunta6.display();
    Boolean resposta6 = pergunta6.clicouResposta();
    if (resposta6 != null) {
      if (resposta6) estado = 27;
      else estado = 12;
    }
    break;

  case 27: 
    acerto.display();
    if (acerto.clicouContinuar()) estado = 13;
    break;

  case 12:
    ensinamento.display(6);
    if (ensinamento.clicouContinuar()) estado = 13;
    break;

  case 13:
    pergunta7.display();
    Boolean resposta7 = pergunta7.clicouResposta();
    if (resposta7 != null) {
      if (resposta7) estado = 28;
      else estado = 14;
    }
    break;

  case 28:
    acerto.display();
    if (acerto.clicouContinuar()) estado = 15;
    break;

  case 14:
    ensinamento.display(7);
    if (ensinamento.clicouContinuar()) estado = 15;
    break;

  case 15:
    pergunta8.display();
    Boolean resposta8 = pergunta8.clicouResposta();
    if (resposta8 != null) {
      if (resposta8) estado = 29;
      else estado = 16;
    }
    break;

  case 29: 
    acerto.display();
    if (acerto.clicouContinuar()) estado = 17;
    break;

  case 16:
    ensinamento.display(8);
    if (ensinamento.clicouContinuar()) estado = 17;
    break;

  case 17:
    pergunta9.display();
    Boolean resposta9 = pergunta9.clicouResposta();
    if (resposta9 != null) {
      if (resposta9) estado = 30;
      else estado = 18;
    }
    break;

  case 30:
    acerto.display();
    if (acerto.clicouContinuar()) estado = 19;
    break;

  case 18:
    ensinamento.display(9);
    if (ensinamento.clicouContinuar()) estado = 19;
    break;

  case 19:
    pergunta10.display();
    Boolean resposta10 = pergunta10.clicouResposta();
    if (resposta10 != null) {
      if (resposta10) estado = 31;
      else estado = 20;
    }
    break;

  case 31: 
    acerto.display();
    if (acerto.clicouContinuar()) estado = 21;
    break;

  case 20:
    ensinamento.display(10);
    if (ensinamento.clicouContinuar()) estado = 21;
    break;

  case 21:
    if (telaFinal ==null){
      telaFinal = new TelaFinal(pontuacao);
      }
  
    telaFinal.display();

    if (telaFinal.clicouContinuar()) {
      telaFinal = null;
      pontuacao.reset();    
      estado = 0;           
      }
    break;
  }
}
