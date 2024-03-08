package creational.factory;

public class VN_PizzaStore extends PizzaStore{
    @Override
    Pizza createPizza(PizzaType p) {
        switch (p){
            case HAISAN -> {
                return new VN_HaiSanPizza();
            }
            case BO -> {
                return new VN_HaiSanPizza();
            }
        }
        return null;
    }
}
