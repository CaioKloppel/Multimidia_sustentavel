class Retangulo extends Forma {
  private float tamanhoA;
  private float tamanhoB;
  
  @Override
  public void setTamanho(float tamanhoA){
    this.tamanhoA = tamanhoA;
    this.tamanhoB = tamanhoA/2;
  }
  
  public float getTamanhoA(){
    return tamanhoA;
  }
  
  public float getTamanhoB(){
    return tamanhoB;
  }
  
  public void invertTamanhos(){
    float buffer = tamanhoA;
    tamanhoA = tamanhoB;
    tamanhoB = buffer;
  }
  
  public void center(){
    setXy(width/2, height/2);
  }
  
  public void display(){
    fill(getCor());
    rectMode(CENTER);
    rect(getX(), getY(), tamanhoA, tamanhoB); 
    if (getStringForma() != null) textoForma();
  }
  
  public void displayGirando(float velocidade){
    pushMatrix();
    girar(getX(), getY(), velocidade); 
    fill(getCor());
    rectMode(CENTER);
    rect(0, 0, tamanhoA, tamanhoB); 
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
    rect(0, 0, tamanhoA, tamanhoB); 
    if (getStringForma() != null) {
      setStringXy(0,0);
      textoForma();
    }
    popMatrix();
  }
}
