# Tetris
import processing.core.PApplet;

public class Tetris extends PApplet {
    public static final int *BOARD_WIDTH*= 10;
    static final int *BOARD_HEIGHT*= 20;
    static final int *BOARD_SCALE*= 40;

    private Game game;

    public static void main(String[] args) {
        PApplet.*main*(“Tetris”);
    }

    public void settings() {
        size(*BOARD_WIDTH** *BOARD_SCALE*, *BOARD_HEIGHT** *BOARD_SCALE*);
    }

    public void setup() {
        game = new Game(this);
    }

    public void draw() {
        game.draw();
        if (keyPressed) {
            game.pressKey();
        }
    }
}

