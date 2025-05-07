class BotaoRetangular extends Retangulo {
  PImage img;

  BotaoRetangular(PImage img) {
    this.img = img; 
  }

  @Override
  public void display() {
    if (img != null) {
      imageMode(CENTER);
      image(img, getX(), getY(), getTamanhoA(), getTamanhoB());
      if (getStringForma() != null) textoForma();
    } else {
      super.display();
    }
  }
  
  public boolean isClicked() {
    float metadeLargura = getTamanhoA() / 2;
    float metadeAltura = getTamanhoB() / 2;
    boolean dentroX = mouseX >= getX() - metadeLargura && mouseX <= getX() + metadeLargura;
    boolean dentroY = mouseY >= getY() - metadeAltura && mouseY <= getY() + metadeAltura;
    return mousePressed && dentroX && dentroY;
  }
}
