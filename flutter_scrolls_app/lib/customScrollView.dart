import 'package:flutter/material.dart';

import 'dart:math' as matematik;

class customScrollOrnek extends StatelessWidget {
  const customScrollOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          //title: Text("Sliver App Bar"),
          backgroundColor: Colors.red,
          expandedHeight: 400,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Sliver App Bar",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              background: Image.asset(
                "assets/images/kopek.jpg",
                fit: BoxFit.cover,
              )),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(sabitListeElemanlari),
          ),
        ),
        SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonk,
                    childCount: 6))),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari),
            itemExtent: 300),
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonk,
                childCount: 10),
            itemExtent: 50),
        SliverGrid(
            delegate: SliverChildListDelegate(sabitListeElemanlari),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonk,
              childCount: 6),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),
      ],
    );
  }

  List<Widget> get sabitListeElemanlari {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }
}

Widget _dinamikElemanUretenFonk(BuildContext context, int index) {
  return Container(
    height: 100,
    color: rastgeleRenkUret(),
    alignment: Alignment.center,
    child: Text(
      "Dinamik Liste Elemanı ${index + 1}",
      style: TextStyle(fontSize: 18),
      textAlign: TextAlign.center,
    ),
  );
}

Color rastgeleRenkUret() {
  return Color.fromARGB(
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255));
}
