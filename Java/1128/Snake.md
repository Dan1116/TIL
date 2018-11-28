# Snake
import processing.core.PApplet;
import processing.core.PFont;

import java.util.Random;
import java.util.ArrayList;

enum Way {
    *UP*, *DOWN*, *LEFT*, *RIGHT*
}

public class Snake extends PApplet {

    private int score;

    public static void main(String[] args) {
        PApplet.*main*("Snake");
    }

    private Cell lastCell;
    private Coordinates food;
    private Head head;
    private ArrayList<Cell> cells;
    private int WINDOW_WIDTH = 1000;
    private int WINDOW_HEIGHT = 800;

    public void settings() {
        size(WINDOW_WIDTH, WINDOW_HEIGHT);
    }

    public void setup() {

        cells = new ArrayList<Cell>();

        Random random = new Random();

        Random random2 = new Random();

        Coordinates c = new Coordinates(random.nextInt(20) * 20,
                random.nextInt(20) * 20);

        head = new Head(c);
        cells.add(head);
        food = placeFood();
        lastCell = head;
        addCell();

        int t = random2.nextInt(4);
        Way startingWay;
        switch (t) {
            case 0: {
                startingWay = Way.*UP*;
                break;
            }
            case 1: {
                startingWay = Way.*DOWN*;
                break;
            }
            case 2: {
                startingWay = Way.*LEFT*;
                break;
            }
            case 3: {
                startingWay = Way.*RIGHT*;
                break;
            }
            default: {
                startingWay = Way.*RIGHT*;
                break;
            }
        }

        head.setWay(startingWay);

    }

    public void keyPressed() {

        if (keyCode == 37) {
            head.setWay(Way.*LEFT*);
        }

        if (keyCode == 38) {
            head.setWay(Way.*UP*);
        }

        if (keyCode == 39) {
            head.setWay(Way.*RIGHT*);
        }

        if (keyCode == 40) {
            head.setWay(Way.*DOWN*);
        }
    }

    public void draw() {
        background(123);

        try {
            Thread.*sleep*(80);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        fill(0);

        rect(0, 30, WINDOW_WIDTH, WINDOW_HEIGHT);
        fill(255);
        drawFood();

        String s = "Score : " + score;
        textSize(22f);
        text(s, 10, 22);

        for (Cell c : cells) {
            c.move();
        }

        if (!isCollision()) {
            for (Cell c : cells) {
                c.draw();
            }
            if (isHunt()) {
                score++;
                food = placeFood();
                addCell();
            }
        } else {
            exit();
        }
    }

    class Cell {
        private Coordinates coordinate;
        Coordinates toSon;
        private Cell parent;

        Cell(Coordinates c) {
            this.setCoordinate(c);
        }

        Cell(Cell parent) {
            this.parent = parent;
        }

        Coordinates getCoordinate() {
            return coordinate;
        }

        void setCoordinate(Coordinates coordinate) {
            this.coordinate = coordinate;
        }

        void draw() {
            fill(0, 250, 0);
            rect(coordinate.getX(), coordinate.getY(), 20, 20, 20);
        }

        public void move() {
            this.toSon = this.coordinate;
            this.coordinate = parent.toSon;
        }
    }

    class Head extends Cell {
        private int speed = 20;
        private Way w;

        Head(Coordinates c) {
            super(c);
        }

        void setWay(Way w) {
            if (this.w == Way.*UP*&& w == Way.*DOWN*) {

            } else if (this.w == Way.*DOWN*&& w == Way.*UP*) {

            } else if (this.w == Way.*RIGHT*&& w == Way.*LEFT*) {

            } else if (this.w == Way.*LEFT*&& w == Way.*RIGHT*) {

            } else {
                this.w = w;
            }
        }

        public void move() {
            int addToX = 0, addToY = 0;
            switch (w) {
                case *UP*: {
                    addToX = 0;
                    addToY = -1 * speed;
                    break;

                }
                case *DOWN*: {
                    addToX = 0;
                    addToY = speed;
                    break;
                }
                case *RIGHT*: {
                    addToX = speed;
                    addToY = 0;
                    break;
                }
                case *LEFT*: {
                    addToX = -1 * speed;
                    addToY = 0;
                    break;
                }
            }
            Coordinates c = new Coordinates(this.getCoordinate().getX()
										+ addToX, this.getCoordinate().getY() + addToY);
            this.toSon = this.getCoordinate();
            this.setCoordinate(c);

        }
    }

    private boolean isCollision() {
        for (Cell c : cells) {
            if (head.getCoordinate().equals(c.getCoordinate()) && head != c) {
                return true;
            } else if (head.getCoordinate().getX() > WINDOW_WIDTH
                    || head.getCoordinate().getX() < 0
                    || head.getCoordinate().getY() > WINDOW_HEIGHT
                    || head.getCoordinate().getY() < 10) {
                return true;
            }
        }
        return false;
    }

    private void addCell() {
        lastCell = new Cell(lastCell);
        cells.add(lastCell);
    }

    private Coordinates placeFood() {
        Random random = new Random();

        Coordinates c = new Coordinates(random.nextInt(20) * 20,
                random.nextInt(20) * 20);
        return c;
    }

    private void drawFood() {
        rect(food.getX(), food.getY(), 20, 20, 20);
    }

    private boolean isHunt() {
        return head.getCoordinate().equals(food);
    }

}
