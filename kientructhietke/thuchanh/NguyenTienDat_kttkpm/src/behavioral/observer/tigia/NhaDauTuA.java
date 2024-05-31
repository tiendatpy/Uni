package behavioral.observer.tigia;

public class NhaDauTuA implements TiGiaObserver{
    TiGia t;

    public NhaDauTuA(TiGia t) {
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
            System.out.println("Nha dau tu A: Ban ra");
        else
            System.out.println("Nha dau tu A: Mua vao");
    }
}
