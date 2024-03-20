package bt_TH.stratery.cc1;

public class Context{
    private Tinh tinh_type;

    public Context setTinh(Tinh tinh) {
        this.tinh_type = tinh;
        return this;
    }

    public Context() {
    }

    public float tinh(float a, float b){
        return tinh_type.tinh(a,b);
    }
}
