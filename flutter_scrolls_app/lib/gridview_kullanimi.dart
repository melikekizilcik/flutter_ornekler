import 'package:flutter/material.dart';

class GridviewOrnek extends StatelessWidget {
  const GridviewOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("GridView Dersleri",
              style: TextStyle(
                color: Colors.white,
              ))),
      body: GridView.count(
        crossAxisCount: 3,
        primary: false,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
        scrollDirection: Axis.horizontal,
        children: [
          containerYapisi(Colors.teal.shade100),
          containerYapisi(Colors.teal.shade200),
          containerYapisi(Colors.teal.shade300),
          containerYapisi(Colors.teal.shade400),
          containerYapisi(Colors.teal.shade500),
          containerYapisi(Colors.teal.shade600),
          containerYapisi(Colors.teal.shade700),
          containerYapisi(Colors.teal.shade800),
          containerYapisi(Colors.teal.shade900),
          containerYapisi(Colors.purple.shade100),
          containerYapisi(Colors.purple.shade200),
          containerYapisi(Colors.purple.shade300),
          containerYapisi(Colors.purple.shade400),
          containerYapisi(Colors.purple.shade500),
          containerYapisi(Colors.purple.shade600),
          containerYapisi(Colors.purple.shade700),
        ],
      ),
    );
  }

  Container containerYapisi(Color color) {
    return Container(
      alignment: Alignment.center,
      color: color,
      child: Text(
        "Merhaba flutter",
        textAlign: TextAlign.center,
      ),
    );
  }
}
