import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

Future<String?> uploadImage(
    {required String imagePath, required List<String> folders, required String fileName}) async {
  String downloadUrl;
  FirebaseStorage storage = FirebaseStorage.instance;

//1. Thiet lap duong dan tren firebase storage
  Reference reference = storage.ref();
  for (String f in folders) {
    reference = reference.child(f);
  }
  reference = reference.child(fileName);

//2. thiet lap metadata
  final metadata = SettableMetadata(
    contentType: 'image/jpeg',
    customMetadata: {'picked-file-path': imagePath},
  );
//3. upload anh lên FireBase và trả ve duong dan
  try {
    if (kIsWeb) {
      await reference.putData(await XFile(imagePath).readAsBytes(), metadata);
    } else {
      await reference.putFile(File(imagePath), metadata);
    }
    downloadUrl = await reference.getDownloadURL();
    return downloadUrl;
  } on FirebaseException catch (e) {
    return Future.error("Loi upload anh");
  }
}

Future<void> deleteImage({required List<String> folders, required String fileName}) async {
  FirebaseStorage storage = FirebaseStorage.instance;

//1. Thiet lap duong dan tren firebase storage
  Reference reference = storage.ref();
  for (String f in folders) {
    reference = reference.child(f);
  }
  reference = reference.child(fileName);
  return reference.delete();
}
//
//1, khoi tao firebase
//2. PageUploadImage -> thiet ke ung dung bao gom nut up anh nut delete -> duong dan
//ImageSoure.gallery/camera
//Image.File(xImage.path)
