package on_ck.decorator.B1;

public abstract class BieuThuc {
    abstract float giaTri();
    abstract String bieuThuc();

    @Override
    public String toString() {
        return bieuThuc() + " = " + giaTri();
    }
}
