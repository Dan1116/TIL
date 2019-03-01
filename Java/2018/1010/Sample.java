

class Car {
	Car(int x) {
		System.out.println("Car(int)");
	}

	Car() {
		System.out.println("Car()");
	}
}

class Truck extends Car {
	Truck(int x) {
		super(x);
		System.out.println("Truck(int)");
	}
	Truck() {
		System.out.println("Truck()");
	}
}

public class Sample {
	public static void main(String[] args) {
		Truck truck = new Truck(42);

	}
}
