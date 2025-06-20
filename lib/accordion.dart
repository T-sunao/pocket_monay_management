import 'package:flutter/material.dart';

class Accordion extends StatelessWidget {
  const Accordion({
    super.key,
    required this.headColor,
    required this.bodyColor,
    required this.title,
  });

  // 知りたい情報たちには final をつけておく
  final Color headColor;
  final Color bodyColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      // 閉じたときの文字の色
      collapsedTextColor: Colors.black54,
      // 開いた時の文字の色
      textColor: Colors.black38,
      // 閉じたときのアイコンの色
      collapsedIconColor: Colors.white,
      // 開いた時のアイコンの色
      iconColor: Colors.white,
      // 閉じたときの背景の色
      collapsedBackgroundColor: headColor,
      // 開いた時の背景の色
      backgroundColor: headColor,
      title: Text(title, style: const TextStyle(fontSize: 20)),
      children: [
        Container(
          color: bodyColor,
          width: double.infinity,
          height: 100,
          alignment: Alignment.center,
          child: Text('data'),
        ),
      ],
    );
  }
}
