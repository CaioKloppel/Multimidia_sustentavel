class TelaEnsinamento {
    PImage[] imagensEnsinamento = new PImage[10];

    void carregarImagens() {
        for (int i = 0; i < imagensEnsinamento.length; i++) {
            imagensEnsinamento[i] = loadImage("Images/imgEnsinamentoQuestao" + (i + 1) + ".jpeg");
        }
    }

    void display(int numeroQuestao) {
        int index = numeroQuestao - 1;

        if (index >= 0 && index < imagensEnsinamento.length) {
            if (imagensEnsinamento[index] != null) {
                image(imagensEnsinamento[index], 100, 100);
    }
}
