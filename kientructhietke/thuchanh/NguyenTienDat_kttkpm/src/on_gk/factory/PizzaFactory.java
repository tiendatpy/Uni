package on_gk.factory;

import creational.factory.HaiSanPizza;

public abstract class PizzaFactory {
    abstract Pizza create_Pizza(PizzaType p);
    public Pizza orderPizza(PizzaType p){
        Pizza pizza = create_Pizza(p);
        pizza.prepare();
        pizza.bake();
        pizza.cut();
        pizza.box();
        return pizza;
    }
}
