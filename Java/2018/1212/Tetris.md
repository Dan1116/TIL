# Tetris
import processing.core.PApplet;

public class Tetris extends PApplet {
    private static final int *BLOCK_SPEED*= 20;
    private Block block = Block.*createBlock*();

    public static void main(String[] args) {
        PApplet.*main*(“Tetris”);
    }

    private static final int *WINDOW_WIDTH*= 600;
    private static final int *WINDOW_HEIGHT*= 600;

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
                block.position.setY(block.position.getY() + *BLOCK_SPEED*);
                break;
            case 37:
                block.position.setX(block.position.getX() - *BLOCK_SPEED*);
                break;
            case 39:
                block.position.setX(block.position.getX() + *BLOCK_SPEED*);
                break;
            case 32:
                swap();


        }
    }

    private void swap() {

    }

    public void draw() {
        background(0);
        block.update();
        block.render(this);
    }
}

