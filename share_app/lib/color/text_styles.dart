import 'package:flutter/material.dart';

//黑色文字样式
const TextStyle blackText = TextStyle(color: Colors.black);

//按钮文字样式
const TextStyle buttonText = TextStyle(fontSize: 16.0);

//链接文字样式
const TextStyle linkText = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Colors.indigo,
);

//加粗样式
final TextStyle shadedTitle = TextStyle(
    fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.grey.shade600);

// 消息样式，复制上面样式
final TextStyle messageStyle = shadedTitle.copyWith();

//正确文字样式
final TextStyle correctMessageStyle =
    messageStyle.copyWith(color: Colors.green);

//错误文字样式
final TextStyle incorrectMessageStyle =
    messageStyle.copyWith(color: Colors.red);
