# Tile_완성
import processing.core.PApplet;

class Tile {

    private int x;
    private int y;
    int index;

    Tile(int index) {
        this.x = (index % 4) * Puzzle.*TILE_SIZE*+ Puzzle.*PADDING*;
        this.y = (index / 4) * Puzzle.*TILE_SIZE*+ Puzzle.*PADDING*;
        this.index = index;
    }

    void render(PApplet pApplet) {
        if (index == (Puzzle.*TILE_COUNT*- 1)) {
            pApplet.fill(250, 250, 0);
            pApplet.rect(x, y, Puzzle.*TILE_SIZE*, Puzzle.*TILE_SIZE*);
            return;
        }
        pApplet.fill(250);
        pApplet.rect(x, y, Puzzle.*TILE_SIZE*, Puzzle.*TILE_SIZE*);

        pApplet.fill(0);
        pApplet.textSize(20);
        pApplet.textAlign(PApplet.*CENTER*, PApplet.*CENTER*);
        pApplet.text(“” + index, x + Puzzle.*TILE_SIZE*/ 2f, y + Puzzle.*TILE_SIZE*/ 2f);
    }
}
