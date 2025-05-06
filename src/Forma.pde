abstract class Forma {
  private float tamanho;
  private float x, y;
  private color cor;
  private float rotation = 0;
  
  public void setTamanho(float tamanho){
    this.tamanho = tamanho;
  }
  
  public void setXy(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public void setCor(int r, int g, int b){
    this.cor = color(r, g, b);
  }
  
  public float getTamanho(){
    return tamanho;
  }
  
  public float getX(){
    return x;
  }
  
  public float getY(){
    return y;
  }
  
  public color getCor(){
    return cor;
  }
  
  public float getRotation(){
    return rotation;
  }
  
  public void girar(float x, float y, float velocidade){
    translate(x, y);
    rotation = frameCount * velocidade;
    rotate(rotation);
  }
  
  public void moveX(int velocidade){
    setXy(getX() + velocidade, getY());
  }
  
  public void moveY(int velocidade){
    setXy(getX(), getY() + velocidade);
  }
  
  abstract void display();
  
}
