package decorater.baverage;

public class MainBeverage {
    public static void main(String[] args) {
        Beverage b = new HouseBlend("Cafe Trung Nguyen");
        Beverage b2 = new HouseBlend("Cafe Highland");
        b = new Milk("Sua co gai ha lan", b);
        b = new Milk("Sua ong tho", b);
        b2 = new Mocha("Mocha tra xanh",b2);
        System.out.println(b.getDesciption());
        System.out.println(b.Cost());
        System.out.println(b2.getDesciption());
        System.out.println(b2.Cost());
    }
}
