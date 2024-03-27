package on_gk.composite.De2;

public class MemberDAT extends AbstractProfileDAT{
    String tenNV_DAT, sdt_DAT, phongBan_DAT, email_DAT;
    private MemberDAT(Builder b){
        this.tenNV_DAT = b.tenNV_DAT;
        this.sdt_DAT = b.sdt_DAT;
        this.phongBan_DAT = b.phongBan_DAT;
        this.email_DAT = b.email_DAT;
    }
    public static class Builder{
        String tenNV_DAT, sdt_DAT, phongBan_DAT, email_DAT;

        public Builder setTenNV_DAT(String tenNV_DAT) {
            this.tenNV_DAT = tenNV_DAT;
            return this;
        }

        public Builder setSdt_DAT(String sdt_DAT) {
            this.sdt_DAT = sdt_DAT;
            return this;

        }

        public Builder setPhongBan_DAT(String phongBan_DAT) {
            this.phongBan_DAT = phongBan_DAT;
            return this;

        }

        public Builder setEmail_DAT(String email_DAT) {
            this.email_DAT = email_DAT;
            return this;
        }
        public MemberDAT build(){
            return new MemberDAT(this);
        }
    }

    @Override
    void addNVDAT(AbstractProfileDAT p) {

    }

    @Override
    void removeNVDAT(AbstractProfileDAT p) {

    }

    @Override
    String display(String sep) {
        StringBuilder builder = new StringBuilder();
        builder.append("Thành viên: (")
                .append(tenNV_DAT).append(", ")
                .append(sdt_DAT).append(", ")
                .append(phongBan_DAT).append(", ")
                .append(email_DAT).append(", ")
                .append(")");
        return builder.toString();
    }
}
