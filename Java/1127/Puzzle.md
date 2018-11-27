# Puzzle
import processing.core.PApplet;
import processing.event.KeyEvent;

import java.util.ArrayList;

public class Puzzle extends PApplet {

    static final float *TILE_WIDTH*= 150;
    static final float *TILE_HEIGHT*= 150;
    static final float *PADDING*= 100;
    private static final int *SHUFFLE_COUNT*= 150;
    private ArrayList<PuzzleTile> tiles;

    public static void main(String[] args) {
        PApplet.*main*(“Puzzle”);
    }

    public void settings() {
        this.size(800, 800);
        tiles = new ArrayList<>();
        for (int I = 0; I < 16; I++) {
            tiles.add(new PuzzleTile(i));
        }
    }

    public void setup() {
    }

    @Override
    public void mouseClicked() {
        System.*out*.println(“clicked”);
    }

    private void swap(int from, int to) {
        System.*out*.println(“Swap “ + from + “ , “ + to);
        int temp = this.tiles.get(from).index;
        this.tiles.get(from).index = this.tiles.get(to).index;
        this.tiles.get(to).index = temp;
    }

    private int getEmptyTileIndex() {
        for (int I = 0; I < tiles.size(); I++) {
            if (tiles.get(i).index == 15) return I;
        }
        return -1;
    }

    private ArrayList<Integer> getMoveIndex(int index) {
        ArrayList<Integer> moveIndex = new ArrayList<>();
        if (index % 4 != 0) moveIndex.add(index - 1);
        if (index % 4 != 3) moveIndex.add(index + 1);
        if (index / 4 != 0) moveIndex.add(index - 4);
        if (index / 4 != 3) moveIndex.add(index + 4);
        return moveIndex;
    }

    private boolean isMove(int from, int to) {
        return getMoveIndex(from).contains(to);
    }

    private boolean flagMousePressed = false;
    private int clickIndex = 0;
    private boolean isShuffle = false;
    private int shuffleCount = *SHUFFLE_COUNT*;

    @Override
    public void keyPressed(KeyEvent event) {
        if (event.getKey() == ‘c’) {
            System.*out*.println(“Clear”);
            this.isShuffle = true;
            this.shuffleCount = *SHUFFLE_COUNT*;
        }
    }

    public void draw() {
        if (isShuffle) {
            shuffleCount—;
            int emptyTileIndex = getEmptyTileIndex();
            ArrayList<Integer> indices = getMoveIndex(emptyTileIndex);
            int to = indices.get((int) (Math.*random*() * indices.size()));
            swap(emptyTileIndex, to);
            if (shuffleCount == 0) isShuffle = false;
        } else {
            int index = (int) ((mouseX - Puzzle.*PADDING*) / *TILE_WIDTH*) +
                    (int) ((mouseY - Puzzle.*PADDING*) / *TILE_HEIGHT*) * 4;

            if (this.mousePressed) {
                System.*out*.println(“Press Index : “ + index);
                clickIndex = index;
                if (clickIndex >= 0 && clickIndex < 16) {
                    flagMousePressed = true;
                }
            } else if (flagMousePressed) {

                int emptyTileIndex = this.getEmptyTileIndex();
                System.*out*.println(“Empty “ + emptyTileIndex);

                if (isMove(clickIndex, emptyTileIndex)) {
                    swap(clickIndex, emptyTileIndex);
                }
                flagMousePressed = false;

                boolean isEnd = true;
                for (int I = 0; I < tiles.size(); I++) {
                    if (tiles.get(i).index != i) {
                        isEnd = false;
                        break;
                    }
                }
                if (isEnd) {
                    System.*out*.println(“END!”);
                    isShuffle = true;
                    shuffleCount = *SHUFFLE_COUNT*;
                }
            }
        }
        background(0);
        for (PuzzleTile tile : tiles) {
            tile.render(this);
        }
    }
}


