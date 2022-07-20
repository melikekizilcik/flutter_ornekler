import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_learn/pink_page.dart';
import 'package:navigation_learn/red_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Anasayfa(),
      routes: {
        'redPage': (context) => RedPage(),
        '/': (context) => Anasayfa(),
        '/pinkPage': (context) => PinkPage(),
      },
      onUnknownRoute: (setting) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("Error"),
                ),
                body: Center(
                  child: Text("404"),
                ),
              )),
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation İşlemleri"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (redContext) => RedPage()));
            },
            child: Text("Kırmızı sayfaya git IOS"),
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.push(context, route);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => RedPage())));
            },
            child: Text("Kırmızı sayfaya git Android"),
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text(
                "Maybe Pop Kullanımı",
                //Eğer geri gidebilecek başka eleman varsa gider yoksa gitmez
              )),
          ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  print("Pop olabilir");
                } else {
                  print("hayır olamaz");
                }
              },
              child: Text(
                "canPop Kullanımı",
                //Eğer geri gidebilecek başka eleman varsa gider yoksa gitmez
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => PinkPage()));
              },
              child: Text(
                "Push Replacement Kullanımı",
                //Eğer geri gidebilecek başka eleman varsa gider yoksa gitmez
              )),
          ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed(routeName);
                Navigator.pushNamed(context, '/redPage');
              },
              child: Text(
                "PushNamed Kullanımı",
                //Eğer geri gidebilecek başka eleman varsa gider yoksa gitmez
              )),
          ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed(routeName);
                Navigator.pushNamed(context, '/pinkPage2');
              },
              child: Text(
                "Go to Pink",
                //Eğer geri gidebilecek başka eleman varsa gider yoksa gitmez
              ))
        ],
      )),
    );
  }
}
