# Food
import processing.core.PApplet;

class Food {
    private Vector2 position;
    private int width;
    private int height;

    Food(Vector2 position, int width, int height){
        this.position = position;
        this.width = width;
        this.height = height;
    }

    void render(PApplet pApplet){
        pApplet.fill(250,0,0);
        pApplet.ellipse(position.getX(), position.getY(), width, height);
    }
    int getWidth() {
        return width;
    }

    int getHeight() {
        return height;
    }

    Vector2 getPosition() {
        return position;
    }


}

