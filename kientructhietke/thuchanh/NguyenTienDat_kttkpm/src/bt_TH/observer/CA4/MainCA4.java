package bt_TH.observer.CA4;

public class MainCA4 {
    public static void main(String[] args) {
        TinTuc tinTuc1 = new TinTuc("01", "Sap den ki thi gk roi");
        TinTuc tinTuc2 = new TinTuc("02", "Sap den ki thi ck roi");

        Topic t = new Topic();

        ThanhVienA tva = new ThanhVienA(t);
        ThanhVienB tvb = new ThanhVienB(t);

        t.taoTinMoi(tinTuc1);
        t.taoTinMoi(tinTuc2);

        TinTuc tinTuc3 = new TinTuc("03", "Sap den ki thi ck roi");








    }
}
