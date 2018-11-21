# Puzzle2
import processing.core.PApplet;

import java.util.ArrayList;

public class Puzzle2 extends PApplet {
    static final int *TILE_SIZE*= 150;
    static final int *PADDING*= 100;

    private ArrayList<Tile> tiles;

    public static void main(String[] args) {
        PApplet.*main*(“Puzzle2”);
    }

    public void settings() {
        size(800, 800);
        tiles = new ArrayList<>();
        for (int I = 0; I < 16; I++) {
            tiles.add(new Tile(i));
        }
    }

    public void setup() {

    }

    private void swap(int from, int to) {
        int temp = tiles.get(from).index;
        tiles.get(from).index = tiles.get(to).index;
        tiles.get(to).index = temp;
    }

    private int getEmptyBlockIndex() {
        for (int I = 0; I < 16; I++) {
            if (tiles.get(i).index == 15) return I;
        }
        return -1;
    }

    private boolean isPressed = false;
    private int mouseIndex = -1;

    public void draw() {
        if (mousePressed) {
            mouseIndex = ((mouseX - *PADDING*) / *TILE_SIZE*) + ((mouseY - *PADDING*) / *TILE_SIZE*) * 4;
            isPressed = true;
        } else if (isPressed) {
            swap(mouseIndex, getEmptyBlockIndex());
            isPressed = false;
        }
        background(0);
        for (Tile tile : tiles) {
            tile.render(this);
        }
    }
}

