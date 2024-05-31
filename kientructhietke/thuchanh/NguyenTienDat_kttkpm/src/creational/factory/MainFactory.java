package creational.factory;

public class MainFactory {
    public static void main(String[] args) {
        PizzaStore factory = new VN_PizzaStore();
        Pizza haisan = factory.orderPizza(PizzaType.HAISAN);
        System.out.println(haisan);
    }
}
