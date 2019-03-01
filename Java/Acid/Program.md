# Program
import processing.core.PApplet;



import java.io.IOException;

import java.util.ArrayList;

import java.util.List;



public class Program extends PApplet implements ReaderListener {

    private ArrayList<TextObject> textObjects = new ArrayList<>();

    private String typedWord = "";

    private Client client;

    private boolean showScore;

    private String myScore;

    private String scoreName;



    private String connectedName;



    public static void main(String[] args) {

        PApplet.main("Program");

    }



    private List<TextObject> newObjects = new ArrayList<>();



    @Override

    public void onCreateWord(String word, int timeout) {

        System.out.println(word + " --- " + timeout);



        newObjects.add(new TextObject(word, timeout));

    }



    @Override

    public void onDestroyWord(String word) {

        checkAnswer(word);

    }



    @Override

    public void onShowScore(String username, String score) {

        showScore = true;

        myScore = score;

        scoreName = username;

    }



    @Override

    public void onShowConnected(String username) {

        connectedName = username;

    }



    @Override

    public void setup() {

        client = new Client();

        try {

            client.connect(this);

            client.setUserName("dongwon");

        } catch (IOException e) {

            e.printStackTrace();

            exit();

        }

    }



    @Override

    public void settings() {

        super.settings();

        size(1000, 600);

    }



    @Override

    public void draw() {

        background(0);



        textObjects.addAll(newObjects);

        newObjects = new ArrayList<>();



        if (connectedName != null) {

            text(connectedName + " connected ",800,480);

        }



        if (showScore) {

            text(scoreName + " : " + myScore, 800, 500);

        }



        for (TextObject t : textObjects) {

            t.update();

        }



        for (int i = 0; i < textObjects.size(); i++) {

            TextObject t = textObjects.get(i);

            if (t.isBottom() || t.isNeedDelete()) {

                textObjects.remove(t);

            }

        }



        for (TextObject t : textObjects) {

            t.draw(this);

        }

    }



    @Override

    public void keyPressed() {



        if (key == ENTER) {



            try {

                client.matchWord(typedWord);

            } catch (IOException e) {

                e.printStackTrace();

            }

            System.out.println(typedWord);

            typedWord = “”;

        } else {

            typedWord += key;

        }

    }



    public void checkAnswer(String typedWord) {

        for (TextObject e : textObjects) {

            if (typedWord.equals(e.getWord())) {

                e.setDelete();

            }

        }

    }

}
