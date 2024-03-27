package creational.factory;

public class VN_PizzaStore extends PizzaStore{
    @Override
    Pizza createPizza(PizzaType p) {
        switch (p){
            case HAISAN -> {
                return new HaiSanPizza();
            }
            case BO -> {
                return new BoPizza();
            }
        }
        return null;
    }
}
