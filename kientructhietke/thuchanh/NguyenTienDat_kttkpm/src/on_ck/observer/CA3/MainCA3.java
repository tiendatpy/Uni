package on_ck.observer.CA3;

public class MainCA3 {
    public static void main(String[] args) {
        TiGia tiGia = new TiGia();
        NhaDauTuListener ndtA = new NhaDauTuA(tiGia);
        NhaDauTuListener ndtB = new NhaDauTuB(tiGia);
        System.out.println("Lan 1:");
        tiGia.attach(ndtA);
        tiGia.attach(ndtB);
        tiGia.capNhatTiGia(7);
        System.out.println("Lan 2");
        tiGia.dettach(ndtB);
        tiGia.capNhatTiGia(-1);
    }
}
