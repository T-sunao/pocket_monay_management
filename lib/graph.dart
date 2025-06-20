import 'package:flutter/material.dart';

class GraphPage extends StatelessWidget {
  const GraphPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.black12,
      title: Text('GraphPage'),
    );
    return Scaffold(appBar: appBar);
  }
}
