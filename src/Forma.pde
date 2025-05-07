abstract class Forma {
  private float tamanho;
  private float x, y;
  private color cor;
  private float rotation = 0;
  private String stringForma;
  private color corTexto;
  private PFont fonte; 

  
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
  
  
    // Set corTexto
    public void setCorTexto(int rT, int gT, int bT) {
        this.corTexto = color(rT, gT, bT);
  }

    // GetcorTexto
    public color getCorTexto() {
        return this.corTexto;
  }

  
  // set stringForma
    public void setStringForma(String stringForma) {
        this.stringForma = stringForma;
  }


  // Get stringForma
    public String getStringForma() {
        return stringForma;
  }

 // set font
    public void setFonte(String nomeFonte, int tamanhoFonte) {
      fonte = createFont(nomeFonte, tamanhoFonte); 
  }

  //get font
  public PFont getFont() {
        return this.fonte;
  }

  // method para exibir texto
    public void textoForma() {
        fill(corTexto);
        text(getStringForma(), x, y);
        textFont(fonte);
        noFill();
  }
    
  
  
  abstract void display();
  
}
