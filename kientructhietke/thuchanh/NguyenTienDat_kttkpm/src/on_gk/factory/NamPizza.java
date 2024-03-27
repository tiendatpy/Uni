package on_gk.factory;

public class NamPizza extends Pizza{
    @Override
    void prepare() {
        builder.append("Thêm 3 củ nấm");
    }

    @Override
    void bake() {
        builder.append("Nuuowsng củi");
    }

    @Override
    void cut() {

    }

    @Override
    void box() {

    }
}
