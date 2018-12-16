# Enum
// enum: Enum Class
//  => enum의 각 속성이 객체이다.

// 기존에 enum을 사용하듯이 사용하면, 새로운 상태가 추가될 때마다, 기존 코드가 수정되어야 한다.
// => enum class는 상태에 따른 동작의 변경을 표현할 수 있다.

// 상태에 따른 동작의 변경을 기존 코드의 수정 없이 적용할 수 있다.
//  => State Pattern

class Hero {
    enum State {
        ATTACK {
            @Override
            void action() {
                System.out.println("Attack");
            }
        },
        RUN {
            @Override
            void action() {
                System.out.println("Run");
            }
        },
        STOP {
            @Override
            void action() {
                System.out.println("Stop");
            }
        },
        SA {
            @Override
            void action() {
                System.out.println("SA");
            }
        };


        abstract void action();

    }

    private State state;

    public void setState(State state) {
        this.state = state;
    }

    public void action() {
        state.action();
    }
}

/*
class Hero {
    enum State {
        ATTACK,
        RUN,
        STOP,
        SPECIAL_ATTACK,
    }

    private State state;

    public void setState(State state) {
        this.state = state;
    }

    public void action() {
        if (state == State.RUN) {
            System.out.println("Run");
        } else if (state == State.ATTACK) {
            System.out.println("Attack");
        } else if (state == State.STOP) {
            System.out.println("Stop");
        } else if (state == State.SPECIAL_ATTACK) {
            System.out.println("S A");
        }
    }
}
*/

public class Program {
    public static void main(String[] args) {
        Hero hero = new Hero();
        hero.setState(Hero.State.SA);
        hero.action();
    }
}