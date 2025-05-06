class Circulo extends Forma{
  public void center(){
    setXy(width/2, height/2);
  }
  
  public void display(){
    fill(getCor());
    ellipseMode(CENTER);
    ellipse(getX(), getY(), getTamanho(), getTamanho()); 
  }
  
  public void displayGirando(float velocidade){
    pushMatrix();
    girar(getX(), getY(), velocidade); 
    fill(getCor());
    ellipseMode(CENTER);
    ellipse(0, 0, getTamanho(), getTamanho()); 
    popMatrix();
  }
  
  public void displayParar(){
    pushMatrix();
    fill(getCor());
    ellipseMode(CENTER);
    translate(getX(), getY());
    rotate(getRotation());
    ellipse(0, 0, getTamanho(), getTamanho()); 
    popMatrix();
  }
  
}
