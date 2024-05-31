package bt_TH.observer.CA4;

public class TinTuc {
    private String id;
    private String noiDung;

    public String getId() {
        return id;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public TinTuc(String id, String noiDung) {
        this.id = id;
        this.noiDung = noiDung;
    }

    @Override
    public String toString() {
        return "Thông báo: " + noiDung;
    }
}
