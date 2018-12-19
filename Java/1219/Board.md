# Board
import processing.core.PApplet;
import processing.core.PConstants;

import java.util.Date;
import java.util.Random;

class Board {

    private int[][] gameBoard;
    private int moveKey;
    private long lastFallTime;
    private int blockSpeed;
    private Block currentBlock;
    private Block nextBlock;
    private Block showNextBlock;
    private int score;
    private PApplet tetris;
    private static Random *random*= new Random();

    static {
        *random*.setSeed(new Date().getTime());
    }

    Board(PApplet tetris) {
        showNextBlock = nextBlock;
        this.tetris = tetris;
        blockSpeed = 1;
        score = 0;
        gameBoard = new int[Tetris.*BOARD_HEIGHT*][Tetris.*BOARD_WIDTH*];
        currentBlock = createBlock();
        nextBlock = createBlock();
        lastFallTime = System.*currentTimeMillis*();
        moveKey = tetris.millis();
    }

    private Block createBlock() {
        int chooseBlock = *random*.nextInt(7);
        switch (chooseBlock) {
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

    public void draw() {
        tetris.pushMatrix();
        tetris.scale(40, 40);
        tetris.translate(.5f, .5f);
        drawBoard();
        currentBlock.render();
        nextBlock.drawNextBlock();
        tetris.popMatrix();
        tetris.text("Score : " + score, 10, 20);
        tetris.textSize(20);
    }

    private void drawBoard() {
        for (int i = 0; i < Tetris.*BOARD_HEIGHT*; i++) {
            for (int j = 0; j < Tetris.*BOARD_WIDTH*; j++) {
                tetris.stroke(gameBoard[i][j]);
                tetris.rect(j, i, 0, 0);
            }
        }
    }

    public void time() {
        if (System.*currentTimeMillis*() - lastFallTime >= 400) {
            if (currentBlock.canMoveDown(gameBoard)) {
                currentBlock.moveDown(blockSpeed);
            } else {

                if (currentBlock.y == 0) {
                    endGame();
                }

                appearBlock(currentBlock, gameBoard);
                changeBlock();
                reduceRow(gameBoard);

            }

            lastFallTime = System.*currentTimeMillis*();
        }
    }

    private void changeBlock() {
        currentBlock = nextBlock;
        showNextBlock = createBlock();
        nextBlock = showNextBlock;
    }

    private void appearBlock(Block currentBlock, int[][] gameBoard) {
        for (int row = 0; row < currentBlock.shape.length; row++) {
            for (int col = 0; col < currentBlock.shape[row].length; col++) {
                if (currentBlock.shape[row][col] == 0)
                    continue;
                gameBoard[currentBlock.y + row][currentBlock.x + col] = currentBlock.color;
            }
        }
    }

    private void reduceRow(int[][] gameBoard) {
        for (int i = 0; i < Tetris.*BOARD_HEIGHT*; i++) {
            boolean deleteRow = true;
            for (int j = 0; j < Tetris.*BOARD_WIDTH*; j++) {
                if (gameBoard[i][j] == 0) {
                    deleteRow = false;
                }
            }

            if (!deleteRow) {
                continue;
            }

            score += 1;
            for (int row = i; row > 0; row--) {
                System.*arraycopy*(gameBoard[row - 1], 0, gameBoard[row], 0, Tetris.*BOARD_WIDTH*);
            }
        }
    }

    public void endGame() {
        tetris.stop();
        tetris.background(0);
        tetris.stroke(255);
        tetris.textAlign(PApplet.*CENTER*, PApplet.*CENTER*);
        tetris.textSize(20);
        tetris.text("Game Over", Tetris.*BOARD_WIDTH** Tetris.*BOARD_SCALE*/ 2f,
                Tetris.*BOARD_HEIGHT** Tetris.*BOARD_SCALE*/ 2f);
        tetris.exit();
    }

    public void pressKey() {
        if (tetris.millis() >= moveKey + 150) {
            moveKey();
        }
    }

    private void moveKey() {
        int keyCode = tetris.keyCode;
        moveKey = tetris.millis();
        if (keyCode == PConstants.*UP*) {

            if (currentBlock.canRotate(gameBoard))
                currentBlock.rotateBlock();
        }
        if (keyCode == PConstants.*DOWN*) {
            if (currentBlock.canMoveDown(gameBoard)) {
                currentBlock.moveDown(blockSpeed);
            }
        }
        if (keyCode == PConstants.*LEFT*) {
            if (currentBlock.canMoveLeft(gameBoard)) {
                currentBlock.moveLeft();
            }
        }
        if (keyCode == PConstants.*RIGHT*) {
            if (currentBlock.canMoveRight(gameBoard)) {
                currentBlock.moveRight();
            }
        }
        if (keyCode == 0) {
            while (currentBlock.canMoveDown(gameBoard)) {
                currentBlock.moveDown(blockSpeed);
            }
        }
    }
}

class Game {

    private Board currentState;

    Game(PApplet tetris) {
        gameStates(tetris);
    }

    private void gameStates(PApplet tetris) {

        currentState = new Board(tetris) {

            public void draw() {
                super.draw();
            }
        };
    }

    void draw() {
        currentState.draw();
        currentState.time();
    }

    void pressKey() {
        currentState.pressKey();
    }
}

