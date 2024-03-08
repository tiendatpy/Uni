package bt_TH.J12;

import java.util.Locale;

public class NhanVien {
    String name, age, address;
    double salary;
    int timeWork;

    public NhanVien(){
        name = "Tien Dat";
        age = "20";
        address = "Nha Trang";
        salary = 20;
        timeWork = 100;
    }
    public NhanVien(String name, String age, String address, double salary, int timeWork) {
        this.name = name;
        this.age = age;
        this.address = address;
        this.salary = salary;
        this.timeWork = timeWork;
    }
    public double tinhThuong() {
        if(timeWork < 100) {
            return 0;
        } else if (timeWork < 200) {
            return salary * 0.1;
        }
        else return salary * 0.2;

    }
    @Override
    public String toString() {
        return  "Tên nhân viên: " + name + "\n" + "Tuổi: " + age + "\n" + "Địa chỉ: " + address +"\n" + "Tiền lương: " + salary +"\n" + "Tổng số giờ làm: " + timeWork + "\nTiền thưởng: " + String.format(Locale.US, "%.2f", tinhThuong()) + "\n";
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getTimeWork() {
        return timeWork;
    }

    public void setTimeWork(int timeWork) {
        this.timeWork = timeWork;
    }


}
