import 'package:cloud_firestore/cloud_firestore.dart';

class SinhVien {
  String id;
  String ngay_sinh;
  String que_quan;
  String ten;
  SinhVien({
    required this.id,
    required this.ngay_sinh,
    required this.que_quan,
    required this.ten,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ngay_sinh': ngay_sinh,
      'que_quan': que_quan,
      'ten': ten,
    };
  }

  factory SinhVien.fromJson(Map<String, dynamic> map) {
    return SinhVien(
      id: map['id'] as String,
      ngay_sinh: map['ngay_sinh'] as String,
      que_quan: map['que_quan'] as String,
      ten: map['ten'] as String,
    );
  }
}

class SinhVienSnapShot {
  SinhVien sv;
  DocumentReference docRef;

  SinhVienSnapShot({
    required this.sv,
    required this.docRef,
  });

  factory SinhVienSnapShot.fromDocSnap(DocumentSnapshot docSnap) {
    return SinhVienSnapShot(
      sv: SinhVien.fromJson(docSnap.data() as Map<String, dynamic>),
      docRef: docSnap.reference,
    );
  }
  Future<void> capnhat(SinhVien sv) async {
    return docRef.update(sv.toJson());
  }

  static Future<DocumentReference> addNew(SinhVien sv) {
    return FirebaseFirestore.instance.collection("SinhVien").add(sv.toJson());
  }

  static Stream<List<SinhVienSnapShot>> getAll() {
    var querySnapShot =
        FirebaseFirestore.instance.collection("SinhVien").snapshots();
    return querySnapShot.map(
        (qsn) => qsn.docs.map((e) => SinhVienSnapShot.fromDocSnap(e)).toList());
  }
}
