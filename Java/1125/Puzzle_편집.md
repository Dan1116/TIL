# Puzzle_편집
import processing.core.PApplet;

import java.util.ArrayList;

public class Puzzle extends PApplet {

    static final int *TILE_SIZE*= 150;
    static final int *PADDING*= 100;
    private static final int *ROW*= 4;
    private static final int *COLUMN*= 4;
    private static final int *WINDOW_WIDTH*= 800;
    private static final int *WINDOW_HEIGHT*= 800;
    static final int *TILE_COUNT*= *ROW** *COLUMN*;
    private ArrayList<Tile> tiles;
    private boolean isGameOver = false;

    public static void main(String[] args) {
        PApplet.*main*(“Puzzle”);
    }

    public void settings() {
        size(*WINDOW_WIDTH*, *WINDOW_HEIGHT*);
    }

    public void setup() {
        tiles = new ArrayList<>();
        for (int I = 0; I < *TILE_COUNT*; I++) {
            tiles.add(new Tile(i));
        }
        shuffle();
    }

    private void shuffle() {
        for (int I = 0; I < *TILE_COUNT*; I++) {
            int num = (int) (Math.*random*() * (*TILE_COUNT*- 1));
            swap(I, num);
        }
    }

    private void swap(int from, int to) {
        int temp = tiles.get(from).index;
        tiles.get(from).index = tiles.get(to).index;
        tiles.get(to).index = temp;
    }

    private int getEmptyIndex() {
        for (int I = 0; I < *TILE_COUNT*; I++) {
            if (tiles.get(i).index == (*TILE_COUNT*- 1)) {
                return I;
            }
        }
        return -1;
    }

    private boolean checkOk() {
        return Math.*abs*(getEmptyIndex() - mouseIndex) == 4 ||
                (Math.*abs*(getEmptyIndex() - mouseIndex) == 1 && (getEmptyIndex() / *ROW*== mouseIndex / *ROW*));
    }

    private boolean isPressed = false;
    private int mouseIndex = -1;

    public void draw() {
        if (mousePressed) {
            if (100 > mouseX || 100 > mouseY || 700 < mouseX || 700 < mouseY) {
                isPressed = false;
            }
            mouseIndex = ((mouseX - *PADDING*) / *TILE_SIZE*) +
                    ((mouseY - *PADDING*) / *TILE_SIZE*) * 4;
            isPressed = true;
        } else if (isPressed) {
            if (checkOk()) {
                swap(mouseIndex, getEmptyIndex());
                isPressed = false;
                checkGameOver();
            }
        }

        background(0);
        for (Tile tile : tiles) {
            tile.render(this);
        }

        if (isGameOver) {
            background(0);
            stroke(255);
            text(“GAME OVER \n Press ‘R’ to Restart”, *WINDOW_WIDTH*/ 2f, *WINDOW_HEIGHT*/ 2f);
        }
    }


    @Override
    public void keyPressed() {
        switch (keyCode) {
            case 82:
                shuffle();
                isGameOver = false;
                break;
        }
    }

    private void checkGameOver() {
        int check = 0;
        for (int I = 0; I < *TILE_COUNT*; I++) {
            if (tiles.get(i).index == i) {
                check++;
            }
            if (check == *TILE_COUNT*)
                isGameOver = true;
        }
    }
}

