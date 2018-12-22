# Blocks

import processing.core.PApplet;

class IBlock extends Block {

    IBlock(PApplet tetris) {
        super(tetris.color(0, 255, 255), *getBlock*(), 2, 0, tetris);
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
        super(tetris.color(127, 255, 212), *getBlock*(), 2, -1, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 0, 0, 0},
                {0, 0, 1, 1, 0},
                {0, 0, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class ZBlock extends Block {

    ZBlock(PApplet tetris) {
        super(tetris.color(135, 206, 250), *getBlock*(), 2, -1, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class SBlock extends Block {

    SBlock(PApplet tetris) {
        super(tetris.color(255, 255, 0), *getBlock*(), 2, -1, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 1, 0},
                {0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class JBlock extends Block {

    JBlock(PApplet tetris) {
        super(tetris.color(173, 255, 47), *getBlock*(), 2, -1, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 0, 0, 0},
                {0, 0, 0, 1, 0},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class LBlock extends Block {

    LBlock(PApplet tetris) {
        super(tetris.color(0, 255, 127), *getBlock*(), 2, -1, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

class TBlock extends Block {

    TBlock(PApplet tetris) {
        super(tetris.color(0, 255, 0), *getBlock*(), 2, -1, tetris);
    }

    private static int[][] getBlock() {
        return new int[][]{
                {0, 0, 0, 0, 0},
                {0, 1, 1, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        };
    }
}

