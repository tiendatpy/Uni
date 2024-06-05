package on_ck.observer.CA3;

public class NhaDauTuB implements NhaDauTuListener{
    TiGia tiGia;

    public NhaDauTuB(TiGia tiGia) {
        this.tiGia = tiGia;
    }
    @Override
    public void update(float delta) {
        if (delta < 0){
            System.out.println("Nha dau tu B ban ra");
        }
        else System.out.println("Nha dau tu B mua vao");
    }
}
