# Tetris
import processing.core.PApplet;


public class Tetris extends PApplet {

    private static final int *BLOCK_SPEED*= 20;
    private Block block = Block.*createBlock*();

    public static void main(String[] args) {
        PApplet.*main*(“Tetris”);
    }

    static int *WINDOW_WIDTH*= 400;
    static int *WINDOW_HEIGHT*= 600;


    public void settings() {
        size(*WINDOW_WIDTH*, *WINDOW_HEIGHT*);
    }


    public void setup() {

    }

    @Override
    public void keyPressed() {
        super.keyPressed();
        switch (keyCode) {
            case 40:
                if (block.canFall()) {
                    block.position.setY(block.position.getY() + *BLOCK_SPEED*);
                    break;
                }
            case 39:
                if (block.canMoveRight()) {
                    block.position.setX(block.position.getX() + *BLOCK_SPEED*);
                    break;
                }
            case 38:
                if (block.canRotateLeft()) {
                    block.rotate();
                    break;
                }
            case 37:
                if (block.canMoveLeft()) {
                    block.position.setX(block.position.getX() - *BLOCK_SPEED*);
                    break;
                }
        }
    }


    public void draw() {
        background(0);
        block.update();
        block.render(this);
    }
    
}
