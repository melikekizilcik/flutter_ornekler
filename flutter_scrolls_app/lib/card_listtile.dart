import 'package:flutter/material.dart';

class CardveListTileKullanimi extends StatelessWidget {
  const CardveListTileKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card ve Listtile'),
        ),
        body: Center(
          child: listViewKullanimi(),
        ));
  }

  ListView listViewKullanimi() {
    return ListView(
          children: [
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
          ],
        );
  }

  SingleChildScrollView singleChildScrollViewKullanimi() {
    return SingleChildScrollView(
      child: Column(children: [
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
      ]),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade200,
          shadowColor: Colors.red,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text("Başlık kısmı"),
            subtitle: Text("Alt başlık"),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 60,
          endIndent: 60,
        )
      ],
    );
  }
}
