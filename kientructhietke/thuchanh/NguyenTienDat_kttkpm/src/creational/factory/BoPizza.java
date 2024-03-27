package creational.factory;

public class BoPizza extends Pizza {
    @Override
    void prepare() {
        builder.append("Nướng bò");
    }

    @Override
    void bake() {
        builder.append("\nNuowng nuong nuong");
    }

    @Override
    void cut() {

    }

    @Override
    void box() {

    }
}
