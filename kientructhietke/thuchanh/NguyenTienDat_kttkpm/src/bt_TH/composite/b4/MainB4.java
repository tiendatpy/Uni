package bt_TH.composite.b4;

public class MainB4 {
    public static void main(String[] args) {
//        KeHoachHocTap khoa63 = new KeHoachChung("Khóa 63");

        MonHoc mh1 = new MonHoc("Web1",100_000, 3);
        MonHoc mh2 = new MonHoc("Web2",200_000, 3);
        MonHoc mh3 = new MonHoc("Web3",300_000, 3);
        MonHoc mh4 = new MonHoc("web4",100_000, 3);
        MonHoc mh5 = new MonHoc("web5",200_000, 3);
        MonHoc mh6 = new MonHoc("web6",100_000, 3);
        MonHoc mh7 = new MonHoc("web7",400_000, 3);
        MonHoc mh8 = new MonHoc("web8",300_000, 3);

        KeHoachHocTap nam1 = new KeHoachChung("Năm 2021");
        KeHoachHocTap nam2 = new KeHoachChung("Năm 2022");

        KeHoachHocTap ky1 = new KeHoachChung("Kỳ I");
        KeHoachHocTap ky2 = new KeHoachChung("Kỳ II");
        KeHoachHocTap ky3 = new KeHoachChung("Kỳ III");
        KeHoachHocTap ky4 = new KeHoachChung("Kỳ IV");

        nam1.add(ky1);
        nam1.add(ky2);

        nam2.add(ky3);
        nam2.add(ky4);

        ky1.add(mh1);
        ky1.add(mh2);

        ky2.add(mh3);
        ky2.add(mh4);

        ky3.add(mh5);
        ky3.add(mh6);

        ky4.add(mh7);
        ky4.add(mh8);
        System.out.println(nam1.thongTin("    "));
        System.out.println(nam2.thongTin("    "));

    }
}
