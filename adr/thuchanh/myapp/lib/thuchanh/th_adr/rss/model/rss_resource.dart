// ignore_for_file: public_member_api_docs, sort_constructors_first
class RssResource {
  String id;
  String name;
  String startDesRegrex;
  String endDesRegrex;
  String startImgRegrex;
  String endImgRegrex;
  Map<String, String> resourceHeaders;
  RssResource({
    required this.id,
    required this.name,
    required this.startDesRegrex,
    required this.endDesRegrex,
    required this.startImgRegrex,
    required this.endImgRegrex,
    required this.resourceHeaders,
  });
}

List<RssResource> RssResources = [
  RssResource(
    id: "vnexpress",
    name: "VN Express",
    startDesRegrex: "</a></br>",
    endDesRegrex: "",
    startImgRegrex: '<img src="',
    endImgRegrex: '"',
    resourceHeaders: {
      "Trang chủ": "https://vnexpress.net/rss/tin-moi-nhat.rss",
      "Thế giới": "https://vnexpress.net/rss/the-gioi.rss",
      "Thời sự": "https://vnexpress.net/rss/thoi-su.rss",
      "Kinh doanh": "https://vnexpress.net/rss/kinh-doanh.rss",
      "Starup": "https://vnexpress.net/rss/startup.rss",
      "Giải trí": "https://vnexpress.net/rss/giai-tri.rss",
      "Thể thao": "https://vnexpress.net/rss/the-thao.rss",
      "Pháp luật": "https://vnexpress.net/rss/phap-luat.rss",
    },
  ), // vn expresss
  RssResource(
    id: "thanhnien",
    name: "Thanh nien",
    startDesRegrex: "</a>",
    endDesRegrex: "",
    startImgRegrex: '<img src="',
    endImgRegrex: '"',
    resourceHeaders: {
      "Trang chủ": "https://thanhnien.vn/rss/home.rss",
      "Thời sự": "https://thanhnien.vn/rss/thoi-su.rss",
      "Chào ngày mới": "https://thanhnien.vn/rss/chao-ngay-moi.rss",
      "Kinh tế": "https://thanhnien.vn/rss/kinh-te.rss",
      "Đời sống": "https://thanhnien.vn/rss/doi-song.rss",
      "Sức khỏe": "https://thanhnien.vn/rss/suc-khoe.rss",
      "Giới trẻ": "https://thanhnien.vn/rss/gioi-tre.rss",
    },
  ), // thanh nien
  RssResource(
    id: "dantri",
    name: "Dan tri",
    startDesRegrex: '</a></br>',
    endDesRegrex: "",
    startImgRegrex: "<img src='",
    endImgRegrex: "'",
    resourceHeaders: {
      "Trang chủ": "https://dantri.com.vn/rss/home.rss",
      "Xã hội": "https://dantri.com.vn/rss/xa-hoi.rss",
      "Giá vàng": "https://dantri.com.vn/rss/gia-vang.rss",
      "Thể thao": "https://dantri.com.vn/rss/the-thao.rss",
    },
  ) // dan tri
];
