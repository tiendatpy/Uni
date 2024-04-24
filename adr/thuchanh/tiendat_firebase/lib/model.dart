// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
    return <String, dynamic>{
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

  static Future<DocumentReference> addNew(SinhVien sv) {
    return FirebaseFirestore.instance.collection("SinhVien").add(sv.toJson());
  }

  static Stream<List<SinhVienSnapShot>> getAll() {
    var querySnapShot =
        FirebaseFirestore.instance.collection("SinhVien").snapshots();
    return querySnapShot.map(
        (qsn) => qsn.docs.map((e) => SinhVienSnapShot.fromDocSnap(e)).toList());
  }

  factory SinhVienSnapShot.fromDocSnap(DocumentSnapshot docSnap) {
    return SinhVienSnapShot(
      sv: SinhVien.fromJson(docSnap.data() as Map<String, dynamic>),
      docRef: docSnap.reference,
    );
  }

  Future<void> capnhat(SinhVien sv) async {
    return docRef.update(sv.toJson());
  }
}

class PageSV extends StatelessWidget {
  const PageSV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("abc"),
      ),
      body: StreamBuilder<List<SinhVienSnapShot>>(
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            // * loi xay ra
            return const Center(
              child: Text("Loi"),
            );
          } else {
            if (snapshot.hasData) {
              // * Dang truy cap du lieu
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              var list = snapshot.data!;
              return ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                        leading: Text("${index + 1}"),
                        title: Text(list[index].sv.ten),
                      ),
                  separatorBuilder: (context, index) => const Divider(
                        thickness: 1.5,
                      ),
                  itemCount: list.length);
            }
          }
        },
        stream: SinhVienSnapShot.getAll(),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }
}

class PageChiTietSVState extends StatefulWidget {
  const PageChiTietSVState({super.key});

  @override
  State<PageChiTietSVState> createState() => _PageChiTietSVStateState();
}

class _PageChiTietSVStateState extends State<PageChiTietSVState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ab"),
      ),
    );
  }
}
