package decorater.baverage;

public class Milk extends CondimentDecorator{
    public Milk(String desciption, Beverage beverage) {
        super(desciption, beverage);
    }

    @Override
    public float Cost() {
        return 2 + beverage.Cost();
    }
}
