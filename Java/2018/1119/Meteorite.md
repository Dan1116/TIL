# Meteorite
import processing.core.PApplet;

public class Meteorite {
    private Vector2 position;
    private int width;
    private int height;
    private Color2 color2;
    private float dx;
    private float dy;

    private static final float *METEORITE_SPEED*= 1;


    Meteorite(Vector2 position, int width, int height, Color2 color2, float dx, float dy) {
        this.position = position;
        this.width = width;
        this.height = height;
        this.color2 = color2;
        this.dx = dx;
        this.dy = dy;
    }


    void render(PApplet pApplet) {
        update();
        pApplet.fill(color2.getR(), color2.getG(), color2.getB());
        pApplet.ellipse(position.getX(), position.getY(), width, height);
    }

    private void update() {
        position.setX(position.getX() + dx * *METEORITE_SPEED*);
        position.setY(position.getY() + dx * *METEORITE_SPEED*);
    }

    public int getWidth() {
        return width;
    }

    public int getHeight() {
        return height;
    }

    public Vector2 getPosition() {
        return position;
    }
}

