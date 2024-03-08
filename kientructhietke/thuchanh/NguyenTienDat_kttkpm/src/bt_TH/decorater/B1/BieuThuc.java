package bt_TH.decorater.B1;

public abstract class BieuThuc {
    public abstract float GiaTri();
    public abstract String BieuThuc();


    @Override
    public String toString() {
        return BieuThuc() + " = " + GiaTri();
    }

}
