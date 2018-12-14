# Tetris
import processing.core.PApplet;

public class Tetris extends PApplet {
    public static final int *BOARD_WIDTH*= 10;
    static final int *BOARD_HEIGHT*= 20;
    static final int *DRAW_SCALE*= 30;

    private Game game;

    public static void main(String[] args) {
        PApplet.*main*(“Tetris”);
    }

    public void settings() {
        size(*BOARD_WIDTH** *DRAW_SCALE*, *BOARD_HEIGHT** *DRAW_SCALE*);
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

class Game {
    BoardState currentState;
    BoardState playing;

    Game(PApplet tetris) {
        gameStates(tetris);
    }

    private void gameStates(PApplet tetris) {
        currentState = new BoardState(tetris, this) {
            @Override
            public void draw(int block) {
                super.draw(block);
            }
        };
        playing = new Board(tetris, this);
    }

    void draw() {
        currentState.draw(0);
        currentState.time();
    }

    void pressKey() {
        currentState.pressKey();
    }
}
