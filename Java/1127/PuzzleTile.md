# PuzzleTile
import processing.core.PApplet;

class PuzzleTile {
    private Vector2 pos;
    int index;

    PuzzleTile(int index) {
        this.index = index;
        this.pos = new Vector2();
        float x = (this.index % 4) * Puzzle.*TILE_WIDTH*+ Puzzle.*PADDING*;
        float y = (this.index / 4) * Puzzle.*TILE_HEIGHT*+ Puzzle.*PADDING*;
        System.*out*.println(x + “ , “ + y);
        this.pos.setX(x);
        this.pos.setY(y);
    }

    void render(PApplet p) {

        if(index == 15){
            p.fill(255,255,0);
            p.rect(this.pos.getX(), this.pos.getY(), Puzzle.*TILE_WIDTH*,
                    Puzzle.*TILE_HEIGHT*);
            return;
        }
        p.fill(255);
        p.rect(this.pos.getX(), this.pos.getY(), Puzzle.*TILE_WIDTH*,
                Puzzle.*TILE_HEIGHT*);
        p.strokeWeight(2);
        p.stroke(0);
        p.fill(0);
        p.textSize(20);
        p.textAlign(PApplet.*CENTER*, PApplet.*CENTER*);
        p.text(this.index + “”,
                pos.getX() + Puzzle.*TILE_WIDTH*/ 2,
                pos.getY() + Puzzle.*TILE_HEIGHT*/ 2);
    }
}

