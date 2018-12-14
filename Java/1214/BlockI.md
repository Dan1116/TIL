# BlockI
import processing.core.PApplet;

class IBlock extends Block {

    IBlock(PApplet tetris) {
        super(tetris.color(100, 150, 100), *getBlock*(), 0, 0, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class OBlock extends Block {

    OBlock(PApplet tetris) {
        super(tetris.color(50, 50, 200), *getBlock*(), 0, 0, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 1, 1, 0, 0},
                {0, 1, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class ZBlock extends Block {

    ZBlock(PApplet tetris) {
        super(tetris.color(20, 200, 250), *getBlock*(), 0, 0, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 1, 0, 0},
                {0, 1, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class SBlock extends Block {

    SBlock(PApplet tetris) {
        super(tetris.color(100, 50, 50), *getBlock*(), 0, 0, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 1, 0, 0},
                {0, 0, 1, 1, 0},
                {0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class JBlock extends Block {

    JBlock(PApplet tetris) {
        super(tetris.color(250, 150, 250), *getBlock*(), 0, 0, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 1, 0, 0},
                {1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class LBlock extends Block {

    LBlock(PApplet tetris) {
        super(tetris.color(50, 250, 50), *getBlock*(),0 , 0, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 1, 0, 0},
                {0, 0, 1, 1, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class TBlock extends Block {

    TBlock(PApplet tetris) {
        super(tetris.color(150, 150, 250), *getBlock*(), 0, 0, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 1, 1, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}
