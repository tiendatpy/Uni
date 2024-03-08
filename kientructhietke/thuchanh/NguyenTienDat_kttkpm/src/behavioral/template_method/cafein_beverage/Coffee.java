package behavioral.template_method.cafein_beverage;

public class Coffee extends CaffeinBeverage{
    @Override
    protected void brew(){
        System.out.println("Cho bột cafe vào nước sối và khuấy đều cho tan");
    }
    @Override
    protected void addCondiment(){
        System.out.println("Cho thêm 1 ít sữa ông Thọ. Chúc ngon miệng");
    }
}
