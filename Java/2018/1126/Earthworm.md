# Earthworm
import processing.core.PApplet;

import java.util.ArrayList;

public class Earthworm extends PApplet {
    static final float *PLAYER_SPEED*= 2;
    private static final int *WINDOW_WIDTH*= 800;
    private static final int *WINDOW_HEIGHT*= 800;

    private Worm worm;
    private ArrayList<Food> foods;
    private Food deleteTarget = null;

    public static void main(String[] args) {
        PApplet.*main*(“Earthworm”);
    }

    public void settings() {
        size(*WINDOW_WIDTH*, *WINDOW_HEIGHT*);
    }

    public void setup() {
        setGame();
    }

    private void setGame() {
        worm = new Worm(new Vector2(*WINDOW_WIDTH*/ 2f, *WINDOW_HEIGHT*/ 2f), 25, 25);
        foods = new ArrayList<>();
        for (int I = 0; I < 100; I++) {
            Food food = new Food(new Vector2(random(*WINDOW_HEIGHT*), random(*WINDOW_WIDTH*)),
                    10, 10);
            foods.add(food);
        }
    }

    public void draw() {
        background(0);
        worm.render(this);
        for (Food food : foods) {
            food.render(this);
        }
        for (Food f : foods) {
            boolean result = *collision*(worm.getPosition(), f.getPosition(),
                    worm.getWidth(), worm.getHeight(), f.getWidth() / 2);
            if (result) {
                deleteTarget = f;
            }
        }
        if (deleteTarget != null) {
            foods.remove(deleteTarget);
            deleteTarget = null;
        }
    }

    private static boolean collision(Vector2 rect, Vector2 circle,
                                     int rectWidth, int rectHeight, int circleRadius) {
        if (circle.getX() > (rect.getX() - (rectWidth / 2f) - circleRadius)
                && circle.getX() < (rect.getX() + (rectWidth / 2f) + circleRadius)
                && circle.getY() > (rect.getY() - (rectHeight / 2f) - circleRadius)
                && circle.getY() < (rect.getY() + (rectHeight / 2f) + circleRadius)) {
            if (rect.distance(rect.getX(), rect.getY()) > rectWidth / 2
                    && rect.distance(rect.getX(), rect.getY()) > rectHeight / 2) {
                return circle.distance(rect.getX() - rectWidth / 2f,
                        rect.getY() - rectHeight / 2f) < circleRadius
                        || circle.distance(rect.getX() + rectWidth / 2f,
                        rect.getY() - rectHeight / 2f) < circleRadius
                        || circle.distance(rect.getX() - rectWidth / 2f,
                        rect.getY() + rectHeight / 2f) < circleRadius
                        || circle.distance(rect.getX() + rectWidth / 2f,
                        rect.getY() + rectHeight / 2f) < circleRadius;
            } else return true;
        } else return false;
    }

    @Override
    public void keyPressed() {
        super.keyPressed();
        switch (keyCode) {
            case *DOWN*:
                worm.isDown(true);
                break;
            case *UP*:
                worm.isUp(true);
                break;
            case *RIGHT*:
                worm.isRight(true);
                break;
            case *LEFT*:
                worm.isLeft(true);
                break;
        }
    }

    @Override
    public void keyReleased() {
        super.keyReleased();
        switch (keyCode) {
            case *DOWN*:
                worm.isDown(false);
                break;
            case *UP*:
                worm.isUp(false);
                break;
            case *RIGHT*:
                worm.isRight(false);
                break;
            case *LEFT*:
                worm.isLeft(false);
                break;
        }
    }
}

