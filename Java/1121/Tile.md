# Tile

import processing.core.PApplet;

// 지렁이 게임 만들기
class Tile {
    private int x;
    private int y;
    int index;


    Tile(int index) {
        this.x = (index % 4) * Puzzle2.*TILE_SIZE*+ Puzzle2.*PADDING*;
        this.y = (index / 4) * Puzzle2.*TILE_SIZE*+ Puzzle2.*PADDING*;

        this.index = index;
    }

    void render(PApplet pApplet) {
        if (this.index == 15) {
            pApplet.fill(255, 255, 0);
            pApplet.rect(x, y, Puzzle2.*TILE_SIZE*, Puzzle2.*TILE_SIZE*);
            return;
        }

        pApplet.fill(255);
        pApplet.rect(x, y, Puzzle2.*TILE_SIZE*, Puzzle2.*TILE_SIZE*);

        pApplet.fill(0);
        pApplet.textSize(20);
        pApplet.textAlign(PApplet.*CENTER*, PApplet.*CENTER*);
        pApplet.text(“” + index, x + Puzzle2.*TILE_SIZE*/ 2f, y + Puzzle2.*TILE_SIZE*/ 2f);
    }
}

