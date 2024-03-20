package structural.composite;

public abstract class AbstractFile {
    String ten, ngayTao, duongDan;

    public AbstractFile(String ten, String ngayTao) {
        this.ten = ten;
        this.ngayTao = ngayTao;
    }

    public abstract void add(AbstractFile f);
    public abstract void remove(AbstractFile f);
    public abstract String getStringTreeFolder();
    public  String getPath(){
        return duongDan;
    };

}
