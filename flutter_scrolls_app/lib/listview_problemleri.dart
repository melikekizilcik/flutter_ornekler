import 'package:flutter/material.dart';

class ListViewProblemleri extends StatelessWidget {
  const ListViewProblemleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listview Layout Problems"),
        ),
        body: Container(
          child: ListView(
            children: [
              Container(height: 200, color: Colors.orange.shade200),
              Container(height: 200, color: Colors.orange.shade400),
            ],
          ),
          decoration:
              BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
        ));
  }
}
