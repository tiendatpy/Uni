package on_gk.factory;

public class MainFactory {
    public static void main(String[] args) {
        PizzaFactory factory = new VN_PizzaFactory();
        Pizza bo = factory.orderPizza(PizzaType.BO);
        System.out.println(bo);
    }
}
