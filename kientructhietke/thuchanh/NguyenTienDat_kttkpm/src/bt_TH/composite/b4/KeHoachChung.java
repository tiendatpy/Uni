package bt_TH.composite.b4;

import java.util.ArrayList;
import java.util.List;

public class KeHoachChung extends KeHoachHocTap {
    public KeHoachChung(String ten) {
        super(ten);
    }

    List<KeHoachHocTap> lst = new ArrayList<>();

    @Override
    void add(KeHoachHocTap k) {
        lst.add(k);
    }

    @Override
    void remove(KeHoachHocTap k) {
        lst.remove(k);
    }

    @Override
    int getSoTC() {
        int sum = 0;
        for(var s : lst){
            sum += s.getSoTC();
        }
        return sum;
    }

    @Override
    int getHP() {
        int sum = 0;
        for(var s : lst){
            sum += s.getHP();
        }
        return sum;
    }

    @Override
    String thongTin(String sep) {
        StringBuilder builder = new StringBuilder();
        builder.append(ten)
                .append(", Số TC: ").append(getSoTC())
                .append(", Học phí: ").append(getHP());
        for (var s : lst){
            builder.append("\n")
                    .append(sep + s.thongTin(sep + "    "));
        }
        return builder.toString();
    }
}
