
# 🌱 EcoAventura: Missão Sustentável 🌎

Este é um projeto interativo desenvolvido em **Processing** voltado para a educação infantil sobre sustentabilidade. O jogo apresenta perguntas de múltipla escolha com feedback sonoro e visual, promovendo o aprendizado de forma lúdica e envolvente.

## 🎮 Sobre o Jogo

Ao iniciar o programa, o jogador é levado a um **menu interativo** com botões circulares e retangulares. A cada pergunta respondida, o jogador recebe um feedback auditivo indicando acerto ou erro, além de explicações educativas chamadas de "ensinamentos".

Ao final do jogo, uma **tela comemorativa** aparece, com pontuação final, sons e vídeos celebrando o desempenho do jogador.

---

## 🧱 Estrutura do Projeto

```
src/
├── *.pde                   # Arquivos de código-fonte do Processing
├── sketch.properties       # Configuração do projeto
└── data/                   # Recursos utilizados no jogo (áudios, imagens, vídeos)
```

### Principais arquivos `.pde`

- `Main.pde`: Ponto de entrada principal do sketch.
- `Menu.pde`: Tela inicial com botões de navegação.
- `Pergunta.pde`: Lógica de exibição e verificação de perguntas.
- `Ensinamento.pde`: Mensagens explicativas exibidas após erros.
- `Pontuacao.pde`: Sistema de contagem e exibição da pontuação.
- `TelaAcerto.pde` e `TelaFinal.pde`: Telas finais com feedback visual.
- `BotaoCircular.pde`, `BotaoRetangular.pde`: Componentes gráficos reutilizáveis.
- `Forma.pde`, `Circulo.pde`, `Retangulo.pde`, `Quadrado.pde`, `Triangulo.pde`: Classes geométricas utilizadas para os botões.

### Recursos em `data/`

- Áudios de feedback:
  - `Correto.mp3`
  - `Errado.mp3`
  - `imagem500Sound.mp3`
  - `imagemBaixaSound.mp3`
- Outros recursos adicionais de mídia podem ser incluídos aqui (como imagens ou vídeos comemorativos).

---

## ▶️ Como Executar

1. Certifique-se de ter o [Processing](https://processing.org/download/) instalado.
2. Abra o arquivo `Main.pde` no Processing.
3. Clique em **Run** para iniciar o jogo.

> Obs.: Mantenha a pasta `data/` na mesma estrutura para garantir que os recursos (sons e imagens) sejam carregados corretamente.

---

## 📚 Objetivo Educacional

O jogo foi pensado para ajudar **crianças** a aprenderem conceitos de sustentabilidade de maneira divertida. Ele utiliza **feedback positivo**, **elementos gráficos amigáveis** e **ensino por tentativa e erro** com reforço.

---

## 📜 Licença

Este projeto está licenciado sob a Licença MIT. Sinta-se livre para modificar, compartilhar e usar como quiser!

---

## 🙌 Contribuição

Sinta-se à vontade para sugerir melhorias, novas perguntas ou funcionalidades que possam tornar o jogo ainda mais educativo e divertido.
