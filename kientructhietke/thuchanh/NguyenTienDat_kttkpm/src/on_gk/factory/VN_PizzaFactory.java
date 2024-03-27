package on_gk.factory;

public class VN_PizzaFactory extends PizzaFactory{
    @Override
    Pizza create_Pizza(PizzaType p) {
        if (p == PizzaType.BO){
            return new BoPizza();
        } else if (p == PizzaType.NAM) {
            return new NamPizza();
        }
        else return null;
    }
}
