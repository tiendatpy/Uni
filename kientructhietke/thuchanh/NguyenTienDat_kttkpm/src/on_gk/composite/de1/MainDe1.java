package on_gk.composite.de1;

public class MainDe1 {
    public static void main(String[] args) {
        AbstractComputerDAT cuahang = new ComputerBrandDAT("Thế giới di động");
        AbstractComputerDAT gaming = new ComputerBrandDAT("Acer");
        AbstractComputerDAT vanphong = new ComputerBrandDAT("HP");

        AbstractComputerDAT a1 = new ComputerDAT.Builder().setCPU("Intel i5").setRAM("8GB").setScreen("16 inch").setStorage("256GB").setGiaBan(15_000_000).build();
        AbstractComputerDAT a2 = new ComputerDAT.Builder().setCPU("Intel i6").setRAM("9GB").setScreen("12 inch").setStorage("256GB").setGiaBan(17_000_000).build();
        AbstractComputerDAT a3 = new ComputerDAT.Builder().setCPU("Intel i7").setRAM("2GB").setScreen("11 inch").setStorage("256GB").setGiaBan(16_000_000).build();
        AbstractComputerDAT a4 = new ComputerDAT.Builder().setCPU("Intel i8").setRAM("5GB").setScreen("17 inch").setStorage("256GB").setGiaBan(11_000_000).build();

        cuahang.addComDAT(gaming);
        cuahang.addComDAT(vanphong);

        gaming.addComDAT(a1);
        gaming.addComDAT(a2);

        vanphong.addComDAT(a3);
        vanphong.addComDAT(a4);

        System.out.println(cuahang.display("    "));

        vanphong.removeComDAT(a4);
        System.out.println(cuahang.display("    "));



    }
}
