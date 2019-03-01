# Block
import processing.core.PApplet;

import java.util.Date;
import java.util.Random;

// 객체를 복제하는 방법
// 1. protected -> public
// 2. 예외를 밖으로 전파하지 않는다.
// 3. 반환 타입을 Block 타입으로 변경하고, 캐스팅을 내부에서 수행한다.
// 4. Cloneable 인터페이스를 구현해야 한다.

// Epoch Time
// 1970년 1월 1일부터 시작된 현재까지의 누적 초 시간

// TimeZone
//  => Asia/Seoul => GMT+0

// Unicode
//  => Ascii code
//   A: 65, a: 97, 0: 48
//   C: char(1 byte) - 0~127

// Code Page
//  Windows: CP949(euc-kr): MBCS
//  "hello" -> 5
//  "한글"   -> 6

// Unicode
//  => UTF8, UTF16

public class Block implements Cloneable {
    private int[][] block;
    Vector2 position;

    private Block(int[][] block) {
        this.block = block;
        this.position = new Vector2(0, 0);
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
                if (block[i][j] == 1) {
                    applet.rect(position.getX() + j * 20, position.getY() + i * 20, 20, 20);
                }
            }
        }
    }

    public void update() {
        this.position.update();
    }

    private static final Block *BLOCK_I*= new Block(new int[][]{
            {1, 0, 0, 0},
            {1, 0, 0, 0},
            {1, 0, 0, 0},
            {1, 0, 0, 0},
    });

    private static final Block *BLOCK_O*= new Block(new int[][]{
            {1, 1, 0, 0},
            {1, 1, 0, 0},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
    });

    private static final Block *BLOCK_Z*= new Block(new int[][]{
            {0, 1, 0, 0},
            {1, 1, 0, 0},
            {1, 0, 0, 0},
            {0, 0, 0, 0},
    });
    private static final Block *BLOCK_S*= new Block(new int[][]{
            {1, 0, 0, 0},
            {1, 1, 0, 0},
            {0, 1, 0, 0},
            {0, 0, 0, 0},
    });
    private static final Block *BLOCK_J*= new Block(new int[][]{
            {1, 0, 0, 0},
            {1, 1, 1, 1},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
    });
    private static final Block *BLOCK_L*= new Block(new int[][]{
            {0, 0, 0, 1},
            {1, 1, 1, 1},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
    });
    private static final Block *BLOCK_T*= new Block(new int[][]{
            {1, 1, 1, 0},
            {0, 1, 0, 0},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
    });


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

