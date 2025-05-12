class BotaoCircular extends Circulo {
  PImage img; 
  PImage imgMasked; // imagem já mascarada

  BotaoCircular(PImage img) {
    this.img = img;
    this.imgMasked = null;
  }

  @Override
  public void setTamanho(float tamanho) {
    super.setTamanho(tamanho);
    imgMasked = null; 
  }

  @Override
  public void display() {
    if (img != null) {
      if (imgMasked == null) {
        PImage imgRedimensionada = createImage(int(getTamanho()), int(getTamanho()), ARGB);
        imgRedimensionada.copy(img, 0, 0, img.width, img.height, 0, 0, int(getTamanho()), int(getTamanho()));

        // Cria a máscara circular
        PGraphics mask = createGraphics(int(getTamanho()), int(getTamanho()));
        mask.beginDraw();
        mask.background(0);
        mask.noStroke();
        mask.fill(255);
        mask.ellipseMode(CENTER);
        mask.ellipse(getTamanho()/2, getTamanho()/2, getTamanho(), getTamanho());
        mask.endDraw();

        // Aplica a máscara
        imgRedimensionada.mask(mask.get());
        imgMasked = imgRedimensionada;
      }

      imageMode(CENTER);
      boolean mouseOver = mouseX > (getX() - getTamanho()/2) && 
                       mouseX < (getX() + getTamanho()/2) && 
                       mouseY > (getY() - getTamanho()/2) && 
                       mouseY < (getY() + getTamanho()/2);
    
    if (mouseOver) tint(180); 
    else tint(255);
    
      image(imgMasked, getX(), getY());
      noTint();
      
      if (getStringForma() != null) textoForma();
    } else {
      super.display();
    }
  }

  public boolean isClicked() {
    float distancia = dist(mouseX, mouseY, getX(), getY());
    return mousePressed && distancia <= getTamanho()/2;
  }
}
