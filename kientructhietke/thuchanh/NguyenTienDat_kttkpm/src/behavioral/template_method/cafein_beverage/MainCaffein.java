package behavioral.template_method.cafein_beverage;

public class MainCaffein {
    public static void main(String[] args) {
        CaffeinBeverage cafe = new Coffee();
        cafe.prepareRecipe();
        CaffeinBeverage tea = new Tea();
        tea.prepareRecipe();
    }
}
