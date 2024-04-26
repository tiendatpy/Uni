import 'package:myapp/thuchanh/th_adr/rss/model/rss_resource.dart';

class RSSItem {
  String? title;
  String? pubDate;
  String? desc;
  String? link;
  String? imageUrl;

  RSSItem.empty();

  RSSItem fromJson(Map<String, dynamic> json, {required RssResource r}) {
    title = json['title'];
    pubDate = json['pubDate'];
    desc = _getDesc(json['description'], r: r);
    link = json['link'];
    imageUrl = _getImg(json['description'], r: r);
    return this;
  }

  // rawDesc la doan CDATA
  String _getDesc(String rawDesc, {required RssResource r}) {
    String startRegrex = r.startDesRegrex;
    String endRegrex = r.endDesRegrex;
    int start = rawDesc.indexOf(startRegrex) + startRegrex.length;
    if (start >= startRegrex.length) {
      if (endRegrex.isNotEmpty) {
        int end = rawDesc.indexOf(endRegrex, start);
        return rawDesc.substring(start, end);
      }
      return rawDesc.substring(start);
    }
    return "";
  }

  String? _getImg(String rawImg, {required RssResource r}) {
    String startRegrex = r.startImgRegrex;
    String endRegrex = r.endImgRegrex;
    int start = rawImg.indexOf(startRegrex) + startRegrex.length;
    if (start >= startRegrex.length) {
      if (endRegrex.isNotEmpty) {
        int end = rawImg.indexOf(endRegrex, start);
        return rawImg.substring(start, end);
      }
      return rawImg.substring(start);
    }
    return null;
  }
}
