package bt_TH.stratery.cc1;

public class MainTinh {
    public static void main(String[] args) {
        Context c = new Context();
        var res1 = c.setTinh(new Cong());
        var res2 = c.setTinh(new Tru());
        System.out.println(res1.tinh(8,5));
        System.out.println(res1.tinh(10,5));
    }
}
