package structural.composite;

import java.util.ArrayList;
import java.util.List;

public class Folder extends AbstractFile{
    List<AbstractFile> children = new ArrayList<>();

    public Folder(String ten, String ngayTao) {
        super(ten, ngayTao);
    }


    @Override
    public void add(AbstractFile f) {
        children.add(f);
        f.duongDan = this.duongDan + "\\" + f.duongDan;
    }

    @Override
    public void remove(AbstractFile f) {
        children.remove(f);
    }

    @Override
    public String getStringTreeFolder() {
        StringBuilder builder = new StringBuilder();
        String preStr = "...";
        builder.append(this.ten);
        for(AbstractFile f : children){
            builder.append("\n").append(f.getStringTreeFolder());
        }
        return builder.toString();
    }
}
