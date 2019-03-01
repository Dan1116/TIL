# Block
import processing.core.PApplet;

abstract class Block {
    int color;
    int[][] shape;
    int x;
    float y;
    private PApplet tetris;

    Block(int color, int[][] shape, int x, float y, PApplet tetris) {
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

    private boolean checkPosition(int[][] shape, float i, int j, int[][] board) {
        for (int row = 0; row < shape.length; row++) {
            for (int col = 0; col < shape[row].length; col++) {
                if (shape[row][col] == 0)
                    continue;
                if (row + I >= Tetris.*BOARD_HEIGHT*)
                    return false;
                if (col + j < 0 || col + j >= Tetris.*BOARD_WIDTH*)
                    return false;
                if (board[row + (int) I][col + j] != 0)
                    return false;
            }
        }
        return true;
    }

    void moveDown(float speed) {
        y += speed;
    }

    void moveLeft() {
        x—;
    }

    void moveRight() {
        x++;
    }

    void rotateLeft() {
        this.shape = rotateLeftMatrix();
    }

    boolean canMoveDown(int[][] board) {
        return checkPosition(this.shape, this.y + 1, this.x, board);
    }

    boolean canMoveLeft(int[][] gameBoard) {
        return checkPosition(this.shape, y, x - 1, gameBoard);
    }

    boolean canMoveRight(int[][] gameBoard) {
        return checkPosition(this.shape, y, x + 1, gameBoard);
    }

    boolean canRotateLeft(int[][] gameBoard) {
        return checkPosition(rotateLeftMatrix(), y, x, gameBoard);
    }

    public int[][] rotateLeftMatrix() {
        int[][] transposed = transpose(shape);
        return reverseRows(transposed);
    }

    private int[][] reverseRows(int[][] transposed) {
        int[][] reveresed = new int[transposed.length][transposed[0].length];
        for (int I = 0; I < transposed.length; I++) {
            System.*arraycopy*(transposed[I], 0, reveresed[transposed.length - 1 - I], 0, transposed.length);
        }
        return reveresed;
    }

    private int[][] transpose(int[][] shape) {
        int[][] transposed = new int[shape[0].length][shape.length];
        for (int I = 0; I < shape.length; I++) {
            for (int j = 0; j < shape[I].length; j++) {
                transposed[j][I] = shape[I][j];
            }
        }
        return transposed;
    }
}
