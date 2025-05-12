class BotaoRetangular extends Retangulo {
  PImage img;

  BotaoRetangular(PImage img) {
    this.img = img; 
  }

 @Override
public void display() {
  if (img != null) {
    imageMode(CENTER);
    boolean mouseOver = mouseX > (getX() - getTamanhoA()/2) && 
                       mouseX < (getX() + getTamanhoA()/2) && 
                       mouseY > (getY() - getTamanhoB()/2) && 
                       mouseY < (getY() + getTamanhoB()/2);
    
    if (mouseOver) tint(180); 
    else tint(255); 
    
    image(img, getX(), getY(), getTamanhoA(), getTamanhoB());
    noTint(); 
    
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
