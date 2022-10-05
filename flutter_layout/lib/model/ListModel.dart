class ListModel {
  String title;
  String url;

  ListModel(this.title, this.url);
}

class UpdateItemModel {
  String appIcon;
  String appName;
  String appSize;
  String appDate;
  String appDescription;
  String appVersion;

  UpdateItemModel(
      {required this.appIcon,
      required this.appName,
      required this.appSize,
      required this.appDate,
      required this.appDescription,
      required this.appVersion});
}
