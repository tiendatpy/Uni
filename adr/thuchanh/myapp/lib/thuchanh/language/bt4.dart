import 'dart:math';

void main() async {
  List<String> lst = ["táo", "dưa chuột", "dưa leo", "cam"];
  List<int> lstInt = lst.map((cd) => cd.length).toList();
  // print(lstInt); //bai 1
  //bai 2
  lstInt.forEach((e) => {print(e*e)},);
  print("Đợi");
  int num = await lateNum();
  if (num % 2 == 0) {
    print("$num Là số chẵn");
  } else {
    print("$num Số lẻ");
  }
  lateNum().then((value) => {
        if (value % 2 == 0)
          {print("$value Là số chẵn")}
        else
          {print("$value Là số lẻ")}
      });
  print("hết");
}

Future<int> lateNum() async {
  int num = await Future.delayed(
    const Duration(seconds: 3),
    () => Random().nextInt(100),
  );
  print("Đợi...");
  return num;
}
