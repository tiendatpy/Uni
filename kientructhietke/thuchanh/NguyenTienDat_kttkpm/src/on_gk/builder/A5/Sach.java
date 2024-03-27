package on_gk.builder.A5;

import java.util.ArrayList;
import java.util.List;

public class Sach {
    String tuaDe,tacGia;
    int soTrang;
    List<String> dsChuong;

    private Sach(Builder b) {
        this.tuaDe = b.tuaDe;
        this.tacGia = b.tacGia;
        this.soTrang = b.soTrang;
        this.dsChuong = b.dsChuong;
    }

    public static class Builder{
        String tuaDe,tacGia;
        int soTrang;
        List<String> dsChuong = new ArrayList<>();
        public Builder addTuaDe(String td){
            tuaDe = td;
            return this;
        }
        public Builder addTacGia(String tg){
            tacGia = tg;
            return this;
        }
        public Builder addSoTrang(int st){
            soTrang = st;
            return this;
        }
        public Builder addDsChuong(String chuong){
            dsChuong.add(chuong);
            return this;
        }
        public Sach build(){
            return new Sach(this);
        }

    }
    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Tựa đề: ").append(tuaDe)
                .append("\nTác giả: ").append(tacGia)
                .append("\nSố trang: ").append(soTrang)
                .append("\nDanh sách chương: ");
        for(var c : dsChuong){
            builder.append("\n- ").append(c);
        }
        return builder.toString();
    }
}
