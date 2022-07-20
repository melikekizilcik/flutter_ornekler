import 'package:flutter/material.dart';

class PinkPage extends StatelessWidget {
  const PinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pink Page"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text(
          "Pink Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
