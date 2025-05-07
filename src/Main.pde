Menu menu;

void setup(){
  fullScreen();
  background(255);
  
  menu = new Menu();
}

void draw(){
  background(255); 
  if (!menu.clicouIniciar()) menu.display();
}
