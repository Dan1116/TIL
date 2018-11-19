# Window
import processing.core.PApplet;

import java.util.ArrayList;

public class Window extends PApplet {

    private static final int *WINDOW_WIDTH*= 1000;
    private static final int *WINDOW_HEIGHT*= 800;
    private Player player;
    private ArrayList<Meteorite> meteoriteArrayList;
    static final int *PLAYER_SPEED*= 2;
    private boolean isCollision;
    private Meteorite deleteTarget = null;
    private int life = 0;


    public void settings() {
        size(*WINDOW_WIDTH*, *WINDOW_HEIGHT*);
    }


    public void setup() {
        setGame();
    }

    private void setGame() {
        player = new Player(new Vector2(*WINDOW_WIDTH*/ 2f, *WINDOW_HEIGHT*/ 2f),
                30, 30,
                new Color2(0, 255, 0));

        meteoriteArrayList = new ArrayList<>();

        for (int I = 0; I < 250; I++) {
            Meteorite meteorite = new Meteorite(new Vector2(random(0, 1000), random(0, 800)),
                    8, 8,
                    new Color2(183, 75, 100),
                    (float) (Math.*random*() * 2 - 1),
                    (float) (Math.*random*() * 2 - 1));

            meteoriteArrayList.add(meteorite);
        }
        life = 5;
    }

    public void draw() {
        background(183, 183, 183);
        player.render(this);
        for (int I = 0; I < meteoriteArrayList.size(); I++) {
            meteoriteArrayList.get(i).render(this);
        }
//        checkCollision();

        for (Meteorite m : meteoriteArrayList) {
            boolean result = *rectCircleCollision*(player.getPosition(),
                    m.getPosition(),
                    player.getWidth(),
                    player.getHeight(),
                    m.getWidth() / 2);

            if (result) {
                life—;
                System.*out*.println(“life: “ + life);
                deleteTarget = m;
            }
        }

        if (deleteTarget != null) {
            meteoriteArrayList.remove(deleteTarget);
            deleteTarget = null;
        }

        if (life < 0) {
            setGame();

        }

    }

    // 1. 큰 네모에 원의 중점이 들어왔는지 확인
    // 2. 이 모서리에 해당이 되는지 -> 만약 안 들어왔으면, 충돌 true
    // 3. 들어왔으면  충돌 true
    // 4. 목숨, 리게임
//
//
//    private void checkCollision() {
//        for (Meteorite m : meteoriteArrayList) {
//            double diffX = Math.pow(m.getPosition().getX() - player.getPosition().getX(), 2);
//            double diffY = Math.pow(m.getPosition().getY() - player.getPosition().getY(), 2);
//            float rewCenter = player.getWidth() / 2f;
//            float rehCenter = player.getHeight() / 2f;
//            float elW = m.getWidth() / 2f;
//            float elH = m.getHeight() / 2f;
//            if (rewCenter < elW || rehCenter < elH) {
//                Collision = true;
//                System.out.println(“충돌하였습니다”);
//            } else if (Math.sqrt(diffX + diffY) < (rewCenter + elW)){
//                Collision = true;
//                System.out.println(“충돌하였습니다”);
//
//            }
//
//
//

//            else if () {
//                Collision = true;
//                System.out.println(“충돌하였습니다”);
//
//            }
//        }

//    }


    public static boolean rectCircleCollision(Vector2 rect, Vector2 circle,
                                              int rectWidth, int rectHeight, int circleRadius) {
        if (circle.getX() > (rect.getX() - (rectWidth / 2f) - circleRadius)
                && circle.getX() < (rect.getX() + (rectWidth / 2f) + circleRadius)
                && circle.getY() > (rect.getY() - (rectHeight / 2f) - circleRadius)
                && circle.getY() < (rect.getY() + (rectHeight / 2f) + circleRadius)) {
            if (rect.distance(rect.getX(), rect.getY()) > rectWidth / 2
                    && rect.distance(rect.getX(), rect.getY()) > rectHeight / 2) {
                if (circle.distance(rect.getX() - rectWidth / 2f,
                        rect.getY() - rectHeight / 2f) < circleRadius
                        || circle.distance(rect.getX() + rectWidth / 2f,
                        rect.getY() - rectHeight / 2f) < circleRadius
                        || circle.distance(rect.getX() - rectWidth / 2f,
                        rect.getY() + rectHeight / 2f) < circleRadius
                        || circle.distance(rect.getX() + rectWidth / 2f,
                        rect.getY() + rectHeight / 2f) < circleRadius)
                    return true;
                else return false;
            } else return true;
        } else return false;
    }

    @Override
    public void keyPressed() {
        super.keyPressed();
        switch (keyCode) {
            case *DOWN*:
                player.isDown(true);
                break;
            case *UP*:
                player.isUp(true);
                break;
            case *RIGHT*:
                player.isRight(true);
                break;
            case *LEFT*:
                player.isLeft(true);
                break;


        }
    }

    @Override
    public void keyReleased() {
        super.keyReleased();
        switch (keyCode) {
            case *DOWN*:
                player.isDown(false);
                break;
            case *UP*:
                player.isUp(false);
                break;
            case *RIGHT*:
                player.isRight(false);
                break;
            case *LEFT*:
                player.isLeft(false);
                break;
        }
    }

}
