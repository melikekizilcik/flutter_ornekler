import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(
          id: index + 1,
          isim: "Ogrenci adı: ${index + 1}",
          soyisim: "Ogrenci soyadı: ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Öğrenci Listesi"),
        ),
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              var oankiOgrenci = tumOgrenciler[index];
              return Card(
                color: index % 2 == 0
                    ? Colors.purple.shade200
                    : Colors.teal.shade200,
                child: ListTile(
                    onTap: () {
                      print("TIKLANDI : ${index + 1}");
                      EasyLoading.showToast("Eleman tıklandı",
                          duration: Duration(seconds: 3),
                          dismissOnTap: true,
                          toastPosition: EasyLoadingToastPosition.bottom);
                    },
                    onLongPress: () {
                      _alertDialogIslemleri(context, oankiOgrenci);
                    },
                    title: Text(oankiOgrenci.isim),
                    subtitle: Text(oankiOgrenci.soyisim),
                    leading: CircleAvatar(
                      child: Text(oankiOgrenci.id.toString()),
                    )),
              );
            },
            itemCount: tumOgrenciler.length));
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.toString()),
            content: SingleChildScrollView(
                child: ListBody(children: [
              Text("Melike 1" * 100),
              Text("Melike 2" * 100),
              Text("Melike 3" * 100),
            ])),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("KAPAT"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("TAMAM"),
                  ),
                ],
              )
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci({
    required this.id,
    required this.isim,
    required this.soyisim,
  });

  @override
  String toString() {
    return "İsim $isim Soyisim $soyisim id: $id";
  }
}
