import 'package:flutter/material.dart';

class SavingsPage extends StatelessWidget {
  const SavingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.black12,
      title: Text('SavingsPage'),
    );
    return Scaffold(appBar: appBar);
  }
}
