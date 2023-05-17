boolean play;

Pawn [] pawn = new Pawn [16];
Rook [] rook = new Rook [4];
Knight [] knight = new Knight [4];
Bishop [] bishop = new Bishop [4];
King [] king = new King [2];
Queen [] queen = new Queen[2];
Board [] board = new Board[1];

int blockX = width;
int blockY = height;

void setup () {
  size (800, 800);
  play = false;
  //lines
  for (int i = 0; i<=801; i = i + 100) {
    line (0, i, 800, i);
  }
  for (int i = 0; i <= 801; i = i + 100) {
    line (i, 0, i, 800);
  }

  pawn[0] = new Pawn (50, 150, 50, false);
  pawn[1] = new Pawn (150, 150, 50, false);
  pawn[2] = new Pawn (250, 150, 50, false);
  pawn[3] = new Pawn (350, 150, 50, false);
  pawn[4] = new Pawn (450, 150, 50, false);
  pawn[5] = new Pawn (550, 150, 50, false);
  pawn[6] = new Pawn (650, 150, 50, false);
  pawn[7] = new Pawn (750, 150, 50, false);

  pawn[8] = new Pawn (50, 650, 50, true);
  pawn[9] = new Pawn (150, 650, 50, true);
  pawn[10] = new Pawn (250, 650, 50, true);
  pawn[11] = new Pawn (350, 650, 50, true);
  pawn[12] = new Pawn (450, 650, 50, true);
  pawn[13] = new Pawn (550, 650, 50, true);
  pawn[14] = new Pawn (650, 650, 50, true);
  pawn[15] = new Pawn (750, 650, 50, true);

  rook [0] = new Rook (50, 50, 50, false);
  rook [1] = new Rook (750, 50, 50, false);
  rook [2] = new Rook (50, 750, 50, true);
  rook [3] = new Rook (750, 750, 50, true);

  knight [0] = new Knight (150, 50, 50, false);
  knight [1] = new Knight (650, 50, 50, false);
  knight [2] = new Knight (150, 750, 50, true);
  knight [3] = new Knight (650, 750, 50, true);

  bishop [0] = new Bishop (250, 50, 50, false);
  bishop [1] = new Bishop (550, 50, 50, false);
  bishop [2] = new Bishop (250, 750, 50, true);
  bishop [3] = new Bishop (550, 750, 50, true);

  queen [0] = new Queen (450, 50, 50, false);
  queen [1] = new Queen (350, 750, 50, true);

  king [0] = new King (350, 50, 50, false);
  king [1] = new King (450, 750, 50, true);
}

void draw() {
  background(125);
  //Drawing grid
  board[0] = new Board ();
  
  if (!play) {
    startScreen ();
  } else {

  for (int i=0; i<board.length; i++) {
    board[i].display();
  }

  for (int i=0; i<pawn.length; i++) {
    pawn[i].display();
  }
  for (int i=0; i<rook.length; i++) {
    rook[i].display();
  }
  for (int i=0; i<knight.length; i++) {
    knight[i].display();
  }
  for (int i=0; i<bishop.length; i++) {
    bishop[i].display();
  }
  for (int i=0; i<queen.length; i++) {
    queen[i].display();
  }
  for (int i=0; i<king.length; i++) {
    king[i].display();
  }
}
}

void mousePressed() {
  for (int i=0; i<pawn.length; i++) {
    pawn[i].mousePressedVoid();
  }
  for (int i=0; i<rook.length; i++) {
    rook[i].mousePressedVoid();
  }
  for (int i=0; i<knight.length; i++) {
    knight[i].mousePressedVoid();
  }
  for (int i=0; i<bishop.length; i++) {
    bishop[i].mousePressedVoid();
  }
  for (int i=0; i<queen.length; i++) {
    queen[i].mousePressedVoid();
  }
  for (int i=0; i<king.length; i++) {
    king[i].mousePressedVoid();
  }
}

void mouseDragged () {
  for (int i=0; i<pawn.length; i++) {
    pawn[i].mouseDraggedVoid();
  }
  for (int i=0; i<rook.length; i++) {
    rook[i].mouseDraggedVoid();
  }
  for (int i=0; i<knight.length; i++) {
    knight[i].mouseDraggedVoid();
  }
  for (int i=0; i<bishop.length; i++) {
    bishop[i].mouseDraggedVoid();
  }
  for (int i=0; i<queen.length; i++) {
    queen[i].mouseDraggedVoid();
  }
  for (int i=0; i<king.length; i++) {
    king[i].mouseDraggedVoid();
  }
}
void mouseReleased () {

  for (int i=0; i<pawn.length; i++) {
    pawn[i].mouseReleasedVoid();
  }
  
  for (int i=0; i<rook.length; i++) {
    rook[i].mouseReleasedVoid();
  }
  for (int i=0; i<knight.length; i++) {
    knight[i].mouseReleasedVoid();
  }
  for (int i=0; i<bishop.length; i++) {
    bishop[i].mouseReleasedVoid();
  }
  for (int i=0; i<queen.length; i++) {
    queen[i].mouseReleasedVoid();
  }
  for (int i=0; i<king.length; i++) {
    king[i].mouseReleasedVoid();
  }
}

void startScreen() {
  background (0);
  textSize (50);
  text ("Monster Chess", width/2, height/2-150);
  fill(222);
  textAlign(CENTER);
  textSize (20);
  text("Press any key to begin ...", width/2, height/2+200);
  if (mousePressed || keyPressed) {
    play=true;
  }
}

void gameOver () {
  background (0);
  fill (222);
  textAlign (CENTER);
  text ("Game Over!", width/2, height/2);
  noLoop();
}
