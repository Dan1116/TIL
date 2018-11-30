# Snake_1130
import processing.core.PApplet;

import java.util.ArrayList;
import java.util.Random;

enum Way {
    *UP*, *DOWN*, *LEFT*, *RIGHT*
}

public class Snake extends PApplet {

    private static final int *WINDOW_WIDTH*= 600;
    private static final int *WINDOW_HEIGHT*= 420;
    private ArrayList<Cell> cells;
    private Head head;
    private Coordinates food;
    private Cell lastCell;
    private int score;
    private boolean isGameOver;

    public static void main(String[] args) {
        PApplet.*main*(“Snake”);
    }

    public void settings() {
        size(*WINDOW_WIDTH*, *WINDOW_HEIGHT*);
    }

    public void setup() {

        cells = new ArrayList<>();
        Random random = new Random();
        Coordinates c = new Coordinates(random.nextInt(30) * 20,
                random.nextInt(20) * 20);
        head = new Head(c);
        cells.add(head);
        food = placeFood();
        lastCell = head;
        addCell();
        head.setWay(Way.*RIGHT*);
        score = 0;
    }

    public void draw() {
        try {
            Thread.*sleep*(100);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        background(0);

        fill(255);
        drawFood();

        String s = “Score : “ + score;
        textSize(18f);
        textAlign(PApplet.*CENTER*, PApplet.*CENTER*);
        text(s, *WINDOW_WIDTH*/ 2f, 20);

        for (Cell c : cells) {
            c.move();
        }
        if (!isCollision()) {
            for (Cell c : cells) {
                c.snakeHead();
            }
            if (isHunt()) {
                score++;
                food = placeFood();
                checkOverlap();
                addCell();
            }
        } else {
            if (isGameOver) {
                background(0);
                stroke(255);
                textAlign(PApplet.*CENTER*, PApplet.*CENTER*);
                text(“Press ‘R’ to Restart”, *WINDOW_WIDTH*/ 2f, *WINDOW_HEIGHT*/ 2f);

            }
        }
    }

    private void checkOverlap() {
        boolean repeat = true;
        while (repeat) {
            boolean isOverlap = false;
            for (Cell c : cells) {
                System.*out*.println(“c” + c);
                System.*out*.println(“c.getCoordinate” + c.getCoordinate());
                if (c.getCoordinate().equals(food) || head.getCoordinate().equals(food)) {
                    isOverlap = true;
                }
            }
            if (isOverlap) {
                food = placeFood();
                repeat = true;
            } else {
                repeat = false;
            }
        }
    }

    class Cell {
        Coordinates coordinate;
        Coordinates toSon;
        Cell parent;

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

        void snakeHead() {
            fill(0, 250, 0);
            rect(coordinate.getX(), coordinate.getY(), 20, 20, 20);

        }

        public void move() {
            this.toSon = this.coordinate;
            this.coordinate = parent.toSon;
        }
    }

    private boolean isCollision() {
        for (Cell c : cells) {
            if (head.getCoordinate().equals(c.getCoordinate()) && head != c) {
                return isGameOver = true;
            } else if (head.getCoordinate().getX() > *WINDOW_WIDTH*
|| head.getCoordinate().getX() < 0
                    || head.getCoordinate().getY() > *WINDOW_HEIGHT*
|| head.getCoordinate().getY() < -20) {
                return isGameOver = true;
            }
        }
        return isGameOver;
    }

    private void addCell() {
        lastCell = new Cell(lastCell);
        cells.add(lastCell);
    }

    private Coordinates placeFood() {

        Random random = new Random();

        Coordinates c = new Coordinates(random.nextInt(30) * 20,
                random.nextInt(20) * 20 + 20);
        return c;
    }

    private void drawFood() {
        rect(food.getX(), food.getY(), 20, 20, 20);
    }

    private boolean isHunt() {
        return head.getCoordinate().equals(food);
    }

    public void keyPressed() {

        if (keyCode == 37 && !isGameOver) {
            head.setWay(Way.*LEFT*);
        }

        if (keyCode == 38 && !isGameOver) {
            head.setWay(Way.*UP*);
        }

        if (keyCode == 39 && !isGameOver) {
            head.setWay(Way.*RIGHT*);
        }

        if (keyCode == 40 && !isGameOver) {
            head.setWay(Way.*DOWN*);
        }
        if (keyCode == 82 && isGameOver) {
            setup();
            isGameOver = false;
        }
    }

    private class Head extends Cell {

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
            int addToX = 0;
            int addToY = 0;
            switch (w) {
                case *UP*: {
                    addToX = 0;
                    addToY = -speed;
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
                    addToX = -speed;
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
}
