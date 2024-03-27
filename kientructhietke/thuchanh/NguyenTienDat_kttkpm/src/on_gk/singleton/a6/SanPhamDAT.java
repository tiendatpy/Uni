package on_gk.singleton.a6;

public class SanPhamDAT {
    String maSP_DAT, tenSP_DAT;
    int soLuong_DAT;
    double donGia_DAT;


    private SanPhamDAT(Builder b){
        this.maSP_DAT = b.maSP_DAT;
        this.tenSP_DAT = b.tenSP_DAT;
        this.soLuong_DAT = b.soLuong_DAT;
        this.donGia_DAT = b.donGia_DAT;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Mã SP: ").append(maSP_DAT)
                .append(", Tên SP:").append(tenSP_DAT)
                .append(", Số lượng:").append(soLuong_DAT)
                .append(", Đơn giá:").append(donGia_DAT);
        return builder.toString();
    }

    public static class Builder{
        String maSP_DAT, tenSP_DAT;
        int soLuong_DAT;
        double donGia_DAT;

        public Builder setMaSP_DAT(String maSP_DAT) {
            this.maSP_DAT = maSP_DAT;
            return this;
        }

        public Builder setTenSP_DAT(String tenSP_DAT) {
            this.tenSP_DAT = tenSP_DAT;
            return this;
        }

        public Builder setSoLuong_DAT(int soLuong_DAT) {
            this.soLuong_DAT = soLuong_DAT;
            return this;
        }

        public Builder setDonGia_DAT(double donGia_DAT) {
            this.donGia_DAT = donGia_DAT;
            return this;
        }
        public SanPhamDAT build(){
            return new SanPhamDAT(this);
        }
    }

}
