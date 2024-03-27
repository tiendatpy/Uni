package on_gk.factory;

public class BoPizza extends Pizza{
    @Override
    void prepare() {
        builder.append("Thêm 3 con tôm");
    }

    @Override
    void bake() {
        builder.append("Nướng trên lò than");
    }

    @Override
    void cut() {

    }

    @Override
    void box() {

    }
}
