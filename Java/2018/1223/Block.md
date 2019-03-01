# Block

import processing.core.PApplet;

abstract class Block {
    int color;
    int[][] shape;
    int x;
    int y;
    PApplet tetris;

    Block(int color, int[][] shape, int x, int y, PApplet tetris) {
        this.color = color;
        this.shape = shape;
        this.x = x;
        this.y = y;
        this.tetris = tetris;
    }

    void render() {
        tetris.stroke(color);
        for (int i = 0; i < shape.length; i++) {
            for (int j = 0; j < shape[i].length; j++) {
                if (shape[i][j] == 1)
                    tetris.rect(x + j, y + i, 0, 0);
            }
        }
    }

    void drawNextBlock() {
        tetris.stroke(color);
        tetris.scale(0.3f);
        for (int i = 0; i < shape.length; i++) {
            for (int j = 0; j < shape[i].length; j++) {
                if (shape[i][j] == 0) {
                    continue;
                }
                tetris.rect(j, i + 3, 0, 0);
            }
        }
    }

    void drawKeepBlock() {
        tetris.stroke(color);
        tetris.scale(0.2f);
        for (int i = 0; i < shape.length; i++) {
            for (int j = 0; j < shape[i].length; j++) {
                if (shape[i][j] == 0) {
                    continue;
                }
                tetris.rect(j + 4, i + 2, 0, 0);
            }
        }

    }

    private boolean checkPosition(int[][] shape, int i, int j, int[][] gameboard) {
        for (int row = 0; row < shape.length; row++) {
            for (int col = 0; col < shape[row].length; col++) {
                if (shape[row][col] == 0)
                    continue;
                if (row + i >= Tetris.*BOARD_HEIGHT*)
                    return false;
                if (col + j >= Tetris.*BOARD_WIDTH*|| col + j < 0)
                    return false;
                if (gameboard[row + i][col + j] != 0)
                    return false;
            }
        }
        return true;
    }

    void moveDown(int speed) {
        y += speed;
    }

    void moveLeft() {
        x--;
    }

    void moveRight() {
        x++;
    }

    void rotateBlock() {
        this.shape = rotateMatrix();
    }

    void doKeep() {
        this.shape = keepBlock();
    }

    boolean canKepp(int[][] gameBoard) {
        return checkPosition(this.shape, y, x, gameBoard);
    }

    boolean canMoveDown(int[][] gameBoard) {
        return checkPosition(this.shape, this.y + 1, this.x, gameBoard);
    }

    boolean canMoveLeft(int[][] gameBoard) {
        return checkPosition(this.shape, y, x - 1, gameBoard);
    }

    boolean canMoveRight(int[][] gameBoard) {
        return checkPosition(this.shape, y, x + 1, gameBoard);
    }

    boolean canRotate(int[][] gameBoard) {
        return checkPosition(rotateMatrix(), y, x, gameBoard);
    }

    public int[][] keepBlock() {
        int[][] keeped = blockSpace(shape);
        return keepSpace(keeped);
    }

    private int[][] keepSpace(int[][] gameBoard) {
        int[][] keepSpaced = new int[gameBoard.length][gameBoard.length];
        for (int i = 0; i < gameBoard.length; i++) {
            System.*arraycopy*(gameBoard[I], 0, keepSpaced[gameBoard.length - 1], 0, gameBoard.length);
        }
        return keepSpaced;
    }

    private int[][] blockSpace(int[][] gameBoard) {
        int[][] keeped = new int[gameBoard.length][gameBoard.length];
        for (int I = 0; I < gameBoard.length; I++) {
            for (int j = 0; j < gameBoard[I].length; j++) {
                keeped[j][I] = gameBoard[j][I];
            }
        }
        return keeped;
    }

    public int[][] rotateMatrix() {
        int[][] transposed = transpose(shape);
        return reverseRows(transposed);
    }

    private int[][] reverseRows(int[][] gameBoard) {
        int[][] reveresed = new int[gameBoard[3].length][gameBoard[3].length];
        for (int I = 0; I < gameBoard.length; I++) {
            System.arraycopy(gameBoard[I], 0, reveresed[gameBoard.length - 1 - I], 0, gameBoard.length);
        }
        return reveresed;
    }

    private int[][] transpose(int[][] gameBoard) {
        int[][] transposed = new int[gameBoard[3].length][gameBoard[3].length];
        for (int I = 0; I < gameBoard.length; I++) {
            for (int j = 0; j < gameBoard[I].length; j++) {
                transposed[j][I] = gameBoard[I][j];
            }
        }
        return transposed;
    }
}
