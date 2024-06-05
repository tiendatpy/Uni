package on_ck.observer.CA3;

public class NhaDauTuA implements NhaDauTuListener{
    TiGia tiGia;

    public NhaDauTuA(TiGia tiGia) {
        this.tiGia = tiGia;
    }


    @Override
    public void update(float delta) {
        if(delta > 0){
            System.out.println("Nha dau tu A ban ra");
        }
        else
            System.out.println("Nha dau tu A mua vao");
    }
}
