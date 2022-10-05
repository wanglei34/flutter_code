// class Json1 {
//   int? code;
//   String? msg;
//   Data? data;
//
//   Json1({this.code, this.msg, this.data});
//
//   factory Json1.fromJson(Map<String, dynamic> json) {
//     return Json1(
//       code: json['code'],
//       msg: json['msg'],
//       data: Data.fromJson(json['data']),
//     );
//   }
// }

class Json1 {
  Share? share;
  String? nickName;
  String? avatar;

  Json1({this.share, this.nickName, this.avatar});

  factory Json1.fromJson(Map<String, dynamic> json) {
    return Json1(
      share: Share.fromJson(json['share']),
      nickName: json['nickName'],
      avatar: json['avatar'],
    );
  }
}

class Share {
  int? id;
  int? userId;
  String? title;
  String? createTime;
  String? updateTime;
  int? isOriginal;
  String? author;
  String? cover;
  String? summary;
  int? price;
  String? downloadUrl;
  int? buyCount;
  bool? showFlag;
  String? auditStatus;
  String? reason;

  Share({
    this.id,
    this.userId,
    this.title,
    this.createTime,
    this.updateTime,
    this.isOriginal,
    this.author,
    this.cover,
    this.summary,
    this.price,
    this.downloadUrl,
    this.buyCount,
    this.showFlag,
    this.auditStatus,
    this.reason,
  });

  factory Share.fromJson(Map<String, dynamic> json) {
    return Share(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      createTime: json['createTime'],
      updateTime: json['updateTime'],
      isOriginal: json['isOriginal'],
      author: json['author'],
      cover: json['cover'],
      summary: json['summary'],
      price: json['price'],
      downloadUrl: json['downloadUrl'],
      buyCount: json['buyCount'],
      showFlag: json['showFlag'],
      auditStatus: json['auditStatus'],
      reason: json['reason'],
    );
  }
}
