package bt_TH.stratery.cc1;

public class MainTinh {
    public static void main(String[] args) {
        Context c = new Context();
        float res1 = c.setTinh(new Cong()).tinh(8,5);;
        float res2 = c.setTinh(new Tru()).tinh(54, 78);
        System.out.println(res1);
        System.out.println(res2);
    }
}
