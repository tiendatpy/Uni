package behavioral.template_method.cafein_beverage;

public class Tea extends CaffeinBeverage{
    @Override
    protected void brew(){
        System.out.println("Cho nước sôi vào lá trà rồi để 10 phút");
    }
    @Override
    protected void addCondiment(){
        System.out.println("Cho thêm nước chanh. Chúc ngon miệng");
    }
}
