package decorater.baverage;

public abstract class Beverage {
    String desciption;

    public Beverage(String desciption) {
        this.desciption = desciption;
    }
    public abstract float Cost();

    public String getDesciption() {
        return desciption;
    }
}
