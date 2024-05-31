package bt_TH.decorater.B2;

public class MainTokenize {
    public static void main(String[] args) {
        String text = "Hôm nay, thứ Bảy, là ngày đẹp trời";
        Tokenize t = new TachTu(text);
        System.out.println(t.tokenize());
        t = new LoaiBoTuDung(t);
        System.out.println(t.tokenize());
        t = new LoaiBoDauCau(t);
        System.out.println(t.tokenize());
    }
}
