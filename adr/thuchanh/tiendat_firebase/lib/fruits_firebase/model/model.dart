import 'package:cloud_firestore/cloud_firestore.dart';

class Fruit {
  String id;
  String ten;
  int gia;
  String? anh;
  String? mota;
  Fruit({required this.id, this.anh, required this.ten, this.mota, required this.gia});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'ten': ten,
      'anh': anh,
      'mota': mota,
      'gia': gia,
    };
  }

  factory Fruit.fromJson(Map<String, dynamic> map) {
    return Fruit(
      id: map['id'] as String,
      ten: map['ten'] as String,
      anh: map['anh'] as String?,
      mota: map['mota'] as String?,
      gia: map['gia'] as int,
    );
  }
}

class GH_Item {
  String idSP;
  int sl;
  GH_Item({required this.idSP, required this.sl});
}

class FruitSnapShot {
  Fruit fruit;
  // tham chiếu đến địa chỉ của dữ liệu trên firebase
  DocumentReference docRef;
  FruitSnapShot({
    required this.fruit,
    required this.docRef,
  });

  factory FruitSnapShot.fromSnapShot(DocumentSnapshot docSnap) {
    return FruitSnapShot(
      fruit: Fruit.fromJson(docSnap.data() as Map<String, dynamic>),
      docRef: docSnap.reference,
    );
  }

  static Future<DocumentReference> themMoi(Fruit fruit) async {
    return FirebaseFirestore.instance.collection("Fruits").add(fruit.toJson());
  }

  Future<void> capNhat(Fruit fruit) async {
    return docRef.update(fruit.toJson());
  }

  Future<void> xoa() async {
    return docRef.delete();
  }

  // truy vấn  dữ liệu theo thời gian thực
  static Stream<List<FruitSnapShot>> getAll() {
    var sqs = FirebaseFirestore.instance.collection("Fruits").snapshots();
    return sqs.map((qs) => qs.docs.map((docsnap) => FruitSnapShot.fromSnapShot(docsnap)).toList());
  }

  // truy vấn dữ liệu 1 lần
  static Future<List<FruitSnapShot>> getAll2() async {
    QuerySnapshot qs = await FirebaseFirestore.instance.collection("Fruits").get();
    return qs.docs.map((docsnap) => FruitSnapShot.fromSnapShot(docsnap)).toList();
  }
}
