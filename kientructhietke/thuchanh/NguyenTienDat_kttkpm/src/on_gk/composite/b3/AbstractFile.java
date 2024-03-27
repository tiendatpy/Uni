package on_gk.composite.b3;

public abstract class AbstractFile {
    String ten, ngayTao;
    String path;

    public AbstractFile(String ten, String ngayTao) {
        this.ten = ten;
        this.ngayTao = ngayTao;
    }

    abstract void addItem(AbstractFile f);
    abstract void removeItem(AbstractFile f);
    abstract String getStringTreeFolder();
    public String getPath(){
        return path;
    }

}
