package on_gk.composite.b3;

public class File extends AbstractFile{

    public File(String ten, String ngayTao) {
        super(ten, ngayTao);
    }

    @Override
    void addItem(AbstractFile f) {

    }

    @Override
    void removeItem(AbstractFile f) {

    }

    @Override
    String getStringTreeFolder() {
        return ten;
    }
}
