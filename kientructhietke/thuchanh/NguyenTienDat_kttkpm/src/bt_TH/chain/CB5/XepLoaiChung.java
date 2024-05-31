package bt_TH.chain.CB5;

public class XepLoaiChung extends XepLoai {
    public XepLoaiChung(String tenLoai, float ghDuoi, float ghTren) {
        super(tenLoai, ghDuoi, ghTren);
    }

    XepLoai bacCao;
    @Override
    public XepLoai xepLoaiCaoHon(XepLoai xl) {
        bacCao = xl;
        return bacCao;
    }

    @Override
    public String xuLyDiem(float diemSo) {
        System.out.println(tenLoai);
        StringBuilder builder = new StringBuilder();
        if(diemSo >= ghDuoi && diemSo < ghTren){
            builder.append("Điểm ").append(diemSo).append(" xếp loại: ").append(tenLoai);
            return builder.toString();
        }
        return bacCao.xuLyDiem(diemSo);
    }

}
