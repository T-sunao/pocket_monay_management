import 'package:flutter/material.dart';
import './accordion.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final column = Column(
      children: [
        Accordion(
          title: 'カテゴリーの編集',
          headColor: Color.fromARGB(255, 244, 204, 146),
          bodyColor: const Color.fromARGB(255, 245, 219, 180),
        ),
        Accordion(
          title: '貯金の編集',
          headColor: Color.fromARGB(255, 244, 185, 146),
          bodyColor: Color.fromARGB(255, 252, 213, 188),
        ),
      ],
    );

    final body = Center(child: column);

    return body;
  }
}
