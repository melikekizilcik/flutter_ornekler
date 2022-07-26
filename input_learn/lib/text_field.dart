import 'package:flutter/material.dart';

class textFieldIslemleri extends StatefulWidget {
  const textFieldIslemleri({Key? key}) : super(key: key);

  @override
  State<textFieldIslemleri> createState() => _textFieldIslemleriState();
}

class _textFieldIslemleriState extends State<textFieldIslemleri> {
  final String title = "";
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "melikekizilcik@gmail.com");
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  //controllerlar uygulama kapandıkça kendi kendine silinmez, bizim elle silmemiz lazım
  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              focusNode: _focusNode,
              controller: _emailController,
              //klavyede sadece rakamlar çıkacak
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              //kullanıcının birdwen fazla kutu içinden ilk kutuyu açabilmesi için:
              autofocus: true,
              //veri yazılabilecek satır sayısı
              maxLines: maxLineCount,
              //yazı uzunluğu
              maxLength: 20,
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                  labelText: "Label Text",
                  hintText: "Email giriniz",
                  icon: Icon(Icons.add),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.access_alarm_outlined),
                  filled: true,
                  fillColor: Colors.orange,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)))),
              //konsola deger yazdır:
              onChanged: (String deger) {
                if (deger.length > 3) {
                  setState(() {
                    _emailController.value = TextEditingValue(
                        text: deger,
                        //imlecin başlayacağı noktayı ayarlıyoruz
                        selection:
                            TextSelection.collapsed(offset: deger.length));
                  });
                }
              },
              //klavyedeki ikona basıp onaylandığında ekrana basılır
              onSubmitted: (String deger) {
                print("submit" + deger);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_emailController.text),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              //klavyede sadece rakamlar çıkacak
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _emailController.text = "melike@gmail.com";
          });
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
