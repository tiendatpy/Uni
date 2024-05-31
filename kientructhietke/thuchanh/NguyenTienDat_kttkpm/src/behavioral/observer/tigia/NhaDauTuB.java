package behavioral.observer.tigia;

public class NhaDauTuB implements TiGiaObserver{
    TiGia t;

    public NhaDauTuB(TiGia t) {
        this.t = t;
    }

    public void dangKy(){
        t.attach(this);
    }

    public void huyDangKy(){
        t.dettach(this);
    }

    @Override
    public void update(float delta) {
        if(delta >= 0)
            System.out.println("Nha dau tu B: Mua vao");
        else
            System.out.println("Nha dau tu B: Ban ra");
    }
}
