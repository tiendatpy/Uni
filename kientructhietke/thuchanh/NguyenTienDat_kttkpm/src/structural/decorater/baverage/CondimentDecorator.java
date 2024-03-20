package structural.decorater.baverage;

public abstract class  CondimentDecorator extends Beverage{
    Beverage beverage;

    public CondimentDecorator(String desciption, Beverage beverage) {
        super(desciption);
        this.beverage = beverage;
    }

    @Override
    public String getDesciption() {
        return beverage.getDesciption() + ", " + super.getDesciption();
    }
}
