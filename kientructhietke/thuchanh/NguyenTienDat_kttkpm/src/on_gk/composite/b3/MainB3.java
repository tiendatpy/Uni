package on_gk.composite.b3;

public class MainB3 {
    public static void main(String[] args) {
        AbstractFile f = new Folder("Tai lieu", "14/3");
        AbstractFile file1 = new File("CreationalPattern.pdf", "14/3");
        AbstractFile file2 = new File("StructuralPattern.pptx", "14/3");
        f.addItem(file1);
        f.addItem(file2);
        System.out.println(f.getStringTreeFolder());
        f.removeItem(file1);
        System.out.println(f.getStringTreeFolder());
    }
}
