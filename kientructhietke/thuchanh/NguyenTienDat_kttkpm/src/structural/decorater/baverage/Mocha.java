package structural.decorater.baverage;

public class Mocha extends CondimentDecorator{
    public Mocha(String desciption, Beverage beverage) {
        super(desciption, beverage);
    }

    @Override
    public float Cost() {
        return 3 + beverage.Cost();
    }
}
