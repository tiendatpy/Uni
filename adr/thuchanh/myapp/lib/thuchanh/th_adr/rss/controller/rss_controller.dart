import 'dart:convert';

import 'package:get/get.dart';
import 'package:myapp/thuchanh/th_adr/rss/model/rss_item.dart';
import 'package:myapp/thuchanh/th_adr/rss/model/rss_resource.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class SimpleControllerRss extends GetxController {
  final List<RssResource> _resources = RssResources;
  final RssResource _currentResource = RssResources[0];
  String? _rssUrl;
  String? _resourceHeader;
  var _rssList = <RSSItem>[];

  List<RSSItem> get rssList => _rssList;
  String get resourceName => _currentResource.name;
  String? get resourceHeader => _resourceHeader;
  List<String> get headerResources =>
      _currentResource.resourceHeaders.keys.toList();

  static SimpleControllerRss get instances => Get.find<SimpleControllerRss>();

  @override
  void onInit() {
    super.onInit();
    _rssUrl ??= _currentResource.resourceHeaders.values.toList()[0];
    _resourceHeader ??= _currentResource.resourceHeaders.keys.toList()[0];
  }

  @override
  void onReady() {
    super.onReady();
    readRss();
  }

  Future<void> readRss() async {
    _fectchRss(_rssUrl!).then((value) {
      _rssList = value
              ?.map((rssMap) =>
                  RSSItem.empty().fromJson(rssMap, r: _currentResource))
              .toList() ??
          [];
      print(rssList[0].link);
      update(["listRss"]);
    }).catchError((error) {
      print("Looi doc rss catchError: $error");
    }).onError((error, stackTrace) {
      print("Loi doc rss OnError: $error");
    });
  }

  Future<List<dynamic>?> _fectchRss(String rssURL) async {
    final response = await http.get(Uri.parse(rssURL));
    if (response.statusCode == 200) {
      final xml2Json = Xml2Json();
      xml2Json.parse(utf8.decode(response.bodyBytes)); // phân tích nội dung
      String rssJson = xml2Json.toParker(); // Chuyển nội dung rss thanh json
      Map<String, dynamic> jsonData =
          jsonDecode(rssJson); // chuyển chuỗi json thành đối tượng Map
      return jsonData['rss']['channel']['item'];
    }
    print("Lỗi đọc rss");
    return Future.error("Lỗi đọc rss");
  }
}

class RssBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SimpleControllerRss());
  }
}
