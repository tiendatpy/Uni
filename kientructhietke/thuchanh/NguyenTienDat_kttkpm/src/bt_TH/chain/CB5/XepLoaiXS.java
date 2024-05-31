package bt_TH.chain.CB5;

public class XepLoaiXS extends XepLoai {
    public XepLoaiXS(String tenLoai, float ghDuoi, float ghTren) {
        super(tenLoai, ghDuoi, ghTren);
    }

    @Override
    public XepLoai xepLoaiCaoHon(XepLoai xl) {
        return this;
    }

    @Override
    public String xuLyDiem(float diemSo) {
        StringBuilder builder = new StringBuilder();
        if(diemSo >= ghDuoi && diemSo <= ghTren){
            builder.append("Điểm ").append(diemSo).append(" xếp loại: ").append(tenLoai);
            return builder.toString();
        }
        return "Điểm nhập sai";
    }
}
