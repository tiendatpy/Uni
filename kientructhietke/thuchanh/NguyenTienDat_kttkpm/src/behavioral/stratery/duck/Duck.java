package behavioral.stratery.duck;

public abstract class Duck {
    private IFlyable flyable;

    private IQuackable quackable;
    public abstract void display();
    void performQuack(){
        System.out.println(quackable.Quack());
    }
    void swim(){
        System.out.println("Tôi biết bơi 3 ngày nổi");
    }
    void performFly(){
        System.out.println(flyable.Fly());
    }
    public void setFlyable(IFlyable flyable) {
        this.flyable = flyable;
    }

    public void setQuackable(IQuackable quackable) {
        this.quackable = quackable;
    }

    public String getFlyable() {
        return flyable.Fly();
    }
}
