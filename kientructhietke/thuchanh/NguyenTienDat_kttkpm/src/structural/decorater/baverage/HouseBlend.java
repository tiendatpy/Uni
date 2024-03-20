package structural.decorater.baverage;

public class HouseBlend extends Beverage{
    public HouseBlend(String desciption) {
        super(desciption);
    }

    @Override
    public float Cost() {
        return 10;
    }
}
