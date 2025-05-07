class Quadrado extends Forma {
  
  public void center(){
    setXy(width/2, height/2);
  }
  
  public void display(){
    fill(getCor());
    rectMode(CENTER);
    rect(getX(), getY(), getTamanho(), getTamanho()); 
    if (getStringForma() != null) textoForma();
  }
  
  public void displayGirando(float velocidade){
    pushMatrix();
    girar(getX(), getY(), velocidade); 
    fill(getCor());
    rectMode(CENTER);
    rect(0, 0, getTamanho(), getTamanho()); 
    if (getStringForma() != null) {
      setStringXy(0,0);
      textoForma();
    }
    popMatrix();
  }
  
  public void displayParar(){
    pushMatrix();
    fill(getCor());
    rectMode(CENTER);
    translate(getX(), getY());
    rotate(getRotation());
    rect(0, 0, getTamanho(), getTamanho()); 
    if (getStringForma() != null) {
      setStringXy(0,0);
      textoForma();
    }
    popMatrix();
  }
}
