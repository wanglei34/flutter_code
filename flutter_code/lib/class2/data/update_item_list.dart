class UpdateItemList {
  String appIcon;
  String appName;
  String appSize;
  String appDate;
  String appDescription;
  String appVersion;
  bool expand;

  UpdateItemList(
      {required this.appIcon,
      required this.appName,
      required this.appSize,
      required this.appDate,
      required this.appDescription,
      required this.appVersion,
      this.expand = false});
}

final List<UpdateItemList> itemList = [
  UpdateItemList(
      appIcon: 'images/bilibili.png',
      appName: '哔哩哔哩哔哩哔哩哔哩哔哩哔哩哔哩哔哩哔哩哔哩哔哩哔哩哔哩哔哩哔哩',
      appSize: '120.2M',
      appDate: '2022-09-02',
      appDescription: '哔哩哔哩弹幕网哔哩哔哩弹幕网哔哩哔哩弹幕网哔哩哔哩弹幕网哔哩哔哩弹幕网哔哩哔哩弹幕网',
      appVersion: '5.19'),
  UpdateItemList(
      appIcon: 'images/xianyu.png',
      appName: '闲鱼',
      appSize: '120.2M',
      appDate: '2022-09-02',
      appDescription:
          '新功能介绍\n闲鱼，让你的闲置游起来闲鱼，让你的闲置游起来闲鱼，让你的闲置游起来闲鱼，让你的闲置游起来闲鱼，让你的闲置游起来闲鱼，让你的闲置游起来闲鱼，让你的闲置游起来',
      appVersion: '5.19'),
  UpdateItemList(
      appIcon: 'images/xuexitong.png',
      appName: '学习通',
      appSize: '120.2M',
      appDate: '2022-09-02',
      appDescription: '学习通学习通学习通学习通学习通学习通学习通',
      appVersion: '5.19')
];
