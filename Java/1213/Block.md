# Block

import processing.core.PApplet;

import java.util.Date;
import java.util.Random;


public class Block implements Cloneable {
    private int[][] block;
    Vector2 position;
    private int color;

    private Block(int[][] block, int color) {
        this.block = block;
        this.position = new Vector2(0, 0);
        this.color = color;
    }

    @Override
    public Block clone() {
        try {
            Block copy = (Block) super.clone();
            copy.block = block.clone();
            copy.position = position.clone();

            return copy;
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }

        return null;
    }

    public void render(PApplet applet) {
        for (int i = 0; i < block.length; i++) {
            for (int j = 0; j < block[i].length; j++) {
                if (block[i][j] == 1)
                    applet.rect(position.getX() + j * 20, position.getY() + i * 20, 20, 20);
            }
        }
    }

    private boolean checkPosition(int[][] block, int i, int j) {
        for (int row = 0; row < block.length; row++) {
            for (int col = 0; col < block[row].length; col++) {
                if (block[row][col] == 0)
                    continue;
                if (row + i >= Tetris.*WINDOW_HEIGHT*)
                    return false;
                if (col + j < 0 || col + j >= Tetris.*WINDOW_WIDTH*)
                    return false;
            }
        }
        return true;
    }

    private int[][] rotateMatrix() {
        int[][] transposed = transpose(block);
        return reverseRows(transposed);
    }

    private int[][] reverseRows(int[][] transposed) {
        int[][] reveresed = new int[transposed.length][transposed[0].length];
        for (int i = 0; i < transposed.length; i++) {
            System.*arraycopy*(transposed[i], 0, reveresed[transposed.length - 1 - i], 0, transposed.length);
        }
        return reveresed;
    }

    private int[][] transpose(int[][] block) {
        int[][] transposed = new int[block[0].length][block.length];
        for (int i = 0; i < block.length; i++) {
            for (int j = 0; j < block[i].length; j++) {
                transposed[j][i] = block[i][j];
            }
        }
        return transposed;
    }

    void rotate() {
        this.block = rotateMatrix();
    }

    boolean canFall() {
        return checkPosition(this.block, position.getY() + 1, position.getX());
    }

    boolean canMoveLeft() {
        return checkPosition(this.block, position.getY(), position.getX() - 1);
    }

    boolean canMoveRight() {
        return checkPosition(this.block, position.getY(), position.getX() + 1);
    }

    boolean canRotateLeft() {
        return checkPosition(rotateMatrix(), position.getY(), position.getX());
    }

    public void update() {
        this.position.update();
    }


    private static final Block *BLOCK_I*= new Block(new int[][]{
            {1, 0, 0, 0},
            {1, 0, 0, 0},
            {1, 0, 0, 0},
            {1, 0, 0, 0},
    }, 50);

    private static final Block *BLOCK_O*= new Block(new int[][]{
            {1, 1, 0, 0},
            {1, 1, 0, 0},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
    }, 100);

    private static final Block *BLOCK_Z*= new Block(new int[][]{
            {0, 1, 0, 0},
            {1, 1, 0, 0},
            {1, 0, 0, 0},
            {0, 0, 0, 0},
    }, 150);
    private static final Block *BLOCK_S*= new Block(new int[][]{
            {1, 0, 0, 0},
            {1, 1, 0, 0},
            {0, 1, 0, 0},
            {0, 0, 0, 0},
    }, 200);
    private static final Block *BLOCK_J*= new Block(new int[][]{
            {1, 0, 0, 0},
            {1, 1, 1, 1},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
    }, 250);
    private static final Block *BLOCK_L*= new Block(new int[][]{
            {0, 0, 0, 1},
            {1, 1, 1, 1},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
    }, 300);
    private static final Block *BLOCK_T*= new Block(new int[][]{
            {1, 1, 1, 0},
            {0, 1, 0, 0},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
    }, 350);


    private static final Block[] *BLOCK_PROTOTYPES*= new Block[]{
            *BLOCK_I*,
            *BLOCK_O*,
            *BLOCK_Z*,
            *BLOCK_S*,
            *BLOCK_J*,
            *BLOCK_L*,
            *BLOCK_T*,

    };

    private static Random *random*= new Random();

    static {
        *random*.setSeed(new Date().getTime());
    }

    static Block createBlock() {
        int index = *random*.nextInt(*BLOCK_PROTOTYPES*.length);
        return *BLOCK_PROTOTYPES*[index].clone();

    }
}
