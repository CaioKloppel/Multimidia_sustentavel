class Triangulo extends Forma {
  public void center() {
    setXy(width/2, height/2);
  }
  
  public void display() {
    fill(getCor());
    float h = getTamanho() * sqrt(3)/2;
    
    triangle(
      getX(), getY() - (2*h/3),
      getX() - getTamanho()/2, getY() + (h/3),
      getX() + getTamanho()/2, getY() + (h/3)
    );
    if (getStringForma() != null) textoForma();
  }
  
  public void displayGirando(float velocidade) {
    pushMatrix();
    girar(getX(), getY(), velocidade);
    fill(getCor());
    float h = getTamanho() * sqrt(3)/2;
    
    triangle(
      0, -(2*h/3),
      -getTamanho()/2, h/3,
      getTamanho()/2, h/3
    );
    if (getStringForma() != null) {
      setStringXy(0,0);
      textoForma();
    }
    popMatrix();
  }
  
  public void displayParar() {
    pushMatrix();
    translate(getX(), getY());
    rotate(getRotation());
    fill(getCor());
    float h = getTamanho() * sqrt(3)/2;
    
    triangle(
      0, -(2*h/3),
      -getTamanho()/2, h/3,
      getTamanho()/2, h/3
    );
    if (getStringForma() != null) {
      setStringXy(0,0);
      textoForma();
    }
    popMatrix();
  }
}
