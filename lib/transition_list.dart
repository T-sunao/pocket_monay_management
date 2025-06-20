import 'package:flutter/material.dart';

class TransitionListPage extends StatelessWidget {
  const TransitionListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.black12,
      title: Text('TransitionListPage'),
    );
    return Scaffold(appBar: appBar);
  }
}
