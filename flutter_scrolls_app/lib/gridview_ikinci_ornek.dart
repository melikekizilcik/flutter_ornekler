import 'package:flutter/material.dart';

class GridViewIkinciOrnek extends StatelessWidget {
  const GridViewIkinciOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tatlı Köpüş ile GridView Kullanımı",
            style: TextStyle(color: Colors.white)),
      ),
      body: GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              padding: EdgeInsets.all(20),
              child: containerYapisi(),
            ),
            onTap: () => debugPrint("Merhaba Flutter $index tıklandı"),
            onDoubleTap: () =>
                debugPrint("Merhaba Flutter $index çift tıklandı"),
            onLongPress: () =>
                debugPrint("Merhaba Flutter $index uzun basıldı"),
            onHorizontalDragStart: (e) =>
                debugPrint("Merhaba Flutter $index uzun basıldı $e"),
          );
        },
      ),
    );
  }

  Container containerYapisi() {
    return Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.orange, width: 10),
            //borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
            boxShadow: [
              new BoxShadow(
                color: Colors.red,
                offset: new Offset(10.0, 5.0),
                blurRadius: 20.0,
              )
            ],
            shape: BoxShape.circle,
            color: Colors.blue.shade300,
            gradient: LinearGradient(
                colors: [Colors.yellow, Colors.red],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            image: DecorationImage(
                image: AssetImage("assets/images/kopek.jpg"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter)),
        margin: EdgeInsets.all(20),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Merhaba Flutter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            )));
  }
}
