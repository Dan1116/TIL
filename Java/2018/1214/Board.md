# Board
import processing.core.PApplet;
import processing.core.PConstants;

import java.util.Date;
import java.util.Random;

class Board extends BoardState {

    private int[][] gameBoard;
    private int moveKey;
    private long lastFallTime;
    private float blockSpeed;
    private Block currentBlock;
    private Block nextBlock;
    private static Random *random*= new Random();

    static {
        *random*.setSeed(new Date().getTime());
    }

    Board(PApplet tetris, Game t) {
        super(tetris, t);
        blockSpeed = 1.0f;
        gameBoard = new int[Tetris.*BOARD_HEIGHT*][Tetris.*BOARD_WIDTH*];
        currentBlock = createBlock();
        nextBlock = createBlock();
        lastFallTime = System.*currentTimeMillis*();
        moveKey = tetris.millis();
    }

    private Block createBlock() {
        int choose = *random*.nextInt(7);
        switch (choose) {
            case 0:
                return new IBlock(tetris);
            case 1:
                return new OBlock(tetris);
            case 2:
                return new TBlock(tetris);
            case 3:
                return new ZBlock(tetris);
            case 4:
                return new SBlock(tetris);
            case 5:
                return new JBlock(tetris);
            case 6:
                return new LBlock(tetris);
        }
        return null;
    }

    public void draw(int block) {
        tetris.pushMatrix();
        tetris.scale(30, 30);
        tetris.translate(.5f, .5f);
        drawBoard();
        currentBlock.render();
        tetris.popMatrix();
    }

    private void drawBoard() {
        for (int I = 0; I < Tetris.*BOARD_HEIGHT*; I++) {
            for (int j = 0; j < Tetris.*BOARD_WIDTH*; j++) {
                tetris.stroke(gameBoard[I][j]);
                tetris.rect(j, I, 0, 0);
            }
        }
    }

    public void time() {
        if (System.*currentTimeMillis*() - lastFallTime >= 200) {
            if (currentBlock.canMoveDown(gameBoard)) {
                currentBlock.moveDown(blockSpeed);
            } else {
                if (currentBlock.y == 0)
                    writeBlock(currentBlock, gameBoard);
                changeBlock();
            }
            lastFallTime = System.*currentTimeMillis*();
        }
    }

    private void changeBlock() {
        currentBlock = nextBlock;
        nextBlock = createBlock();
    }

    private void writeBlock(Block currentBlock, int[][] gameBoard) {
        for (int row = 0; row < currentBlock.shape.length; row++) {
            for (int col = 0; col < currentBlock.shape[row].length; col++) {
                if (currentBlock.shape[row][col] == 0)
                    continue;
                gameBoard[(int) currentBlock.y + row][currentBlock.x + col] = currentBlock.color;
            }
        }
    }

    public void pressKey() {
        if (tetris.millis() >= moveKey + 200)
            moveKey();
    }

    private void moveKey() {
        int keyCode = tetris.keyCode;
        moveKey = tetris.millis();
        if (keyCode == PConstants.*UP*) {

            if (currentBlock.canRotateLeft(gameBoard))
                currentBlock.rotateLeft();
        }
        if (keyCode == PConstants.*DOWN*) {
            if (currentBlock.canMoveDown(gameBoard))
                currentBlock.moveDown(blockSpeed);
        }
        if (keyCode == PConstants.*LEFT*) {
            if (currentBlock.canMoveLeft(gameBoard))
                currentBlock.moveLeft();
        }
        if (keyCode == PConstants.*RIGHT*) {
            if (currentBlock.canMoveRight(gameBoard))
                currentBlock.moveRight();
        }
    }
}

abstract class BoardState {
    int[] statePixels;
    PApplet tetris;
    Game t;

    BoardState(PApplet tetris, Game t) {
        this.tetris = tetris;
        this.t = t;
        tetris.loadPixels();
        statePixels = new int[tetris.pixels.length];
        tetris.updatePixels();
    }

    public void draw(int block) {
        tetris.background(0);
        tetris.loadPixels();
        System.*arraycopy*(statePixels, 0, tetris.pixels, 0, statePixels.length);
        tetris.updatePixels();
    }

    public void time() {
    }

    public void pressKey() {
        t.currentState = t.playing;
    }
}
