package bt_TH.builder.A5;

import java.util.ArrayList;
import java.util.List;

public class Sach {
    private String _tuaDe;
    private int _soTrang;
    private String _tacGia;
    private List<String> _dsChuong;
    private Sach(Builder b){
        this._tuaDe = b._tuaDe;
        this._soTrang = b._soTrang;
        this._tacGia = b._tacGia;
        this._dsChuong = b._dsChuong;
    }
    public static class Builder{
        private String _tuaDe;
        private int _soTrang;
        private String _tacGia;
        private List<String> _dsChuong = new ArrayList<>();
        public Builder addTuaDe(String tuade){
            _tuaDe = tuade;
            return this;
        }
        public Builder addSoTrang(int soTrang){
            _soTrang = soTrang;
            return this;
        }
        public Builder addTacGia(String tacGia){
            _tacGia = tacGia;
            return this;
        }
        public Builder addChuong(String chuong){
            _dsChuong.add(chuong);
            return this;
        }
        public Sach build(){
            return new Sach(this);
        }

    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Tựa đề: ").append(_tuaDe)
                .append(", Số trang: ").append(_soTrang)
                .append(", Tác giả: ").append(_tacGia);
        for (var c : _dsChuong){
            builder.append("\n").append("- ").append(c);
        }
        return builder.toString();
    }
}
