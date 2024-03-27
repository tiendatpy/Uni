package on_gk.factory;

public abstract class Pizza {
    StringBuilder builder = new StringBuilder();
    abstract void prepare();
    abstract void bake();
    abstract void cut();
    abstract void box();

    @Override
    public String toString() {
        return builder.toString();
    }
}
