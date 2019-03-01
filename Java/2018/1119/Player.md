# Player
import processing.core.PApplet;

public class Player {
    private Vector2 position;
    private int width;
    private int height;
    private Color2 color;

    private boolean isUp;
    private boolean isDown;
    private boolean isLeft;
    private boolean isRight;


    Player(Vector2 position, int width, int height, Color2 color) {
        this.position = position;
        this.width = width;
        this.height = height;
        this.color = color;

    }

    void render(PApplet pApplet) {
        update();
        pApplet.fill(color.getR(), color.getG(), color.getB());
        pApplet.rect(position.getX() - width / 2f, position.getY() - height / 2f, width, height);


    }

    private void update() {
        if (isUp) {
            position.setY(position.getY() - Window.*PLAYER_SPEED*);
        }

        if (isDown) {
            position.setY(position.getY() + Window.*PLAYER_SPEED*);
        }
        if (isRight) {
            position.setX(position.getX() + Window.*PLAYER_SPEED*);

        }
        if (isLeft) {
            position.setX(position.getX() - Window.*PLAYER_SPEED*);
        }
    }

    int getWidth() {
        return width;
    }

    public int getHeight() {
        return height;
    }

    public boolean isUp() {
        return isUp;
    }

    void isUp(boolean isUp) {
        this.isUp = isUp;
    }

    public boolean isDown() {
        return isDown;
    }

    void isDown(boolean isDown) {
        this.isDown = isDown;
    }

    public boolean isLeft() {
        return isLeft;
    }

    void isLeft(boolean isLeft) {
        this.isLeft = isLeft;
    }

    public boolean isRight() {
        return isRight;
    }

    void isRight(boolean isRight) {
        this.isRight = isRight;
    }

    public Vector2 getPosition() {
        return position;
    }
}
