import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class textFormFieldKullanimi extends StatefulWidget {
  textFormFieldKullanimi({Key? key}) : super(key: key);

  @override
  State<textFormFieldKullanimi> createState() => _textFormFieldKullanimiState();
}

class _textFormFieldKullanimiState extends State<textFormFieldKullanimi> {
  String _email = "";
  String _password = "";
  String _username = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("TextFormField Kullanımı")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              //autovalidationmode'u aktif etmek için
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    // initialValue: "MelikeKizilcik",
                    decoration: InputDecoration(
                        // errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: "Username",
                        hintText: "userName"),
                    onSaved: (deger) {
                      _username = deger!;
                    },
                    validator: (deger) {
                      if (deger!.length < 4) {
                        return "Username en az 4 karakter olmalı";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    // initialValue: "melikekizilcik@gmail.com",
                    decoration: InputDecoration(
                        // errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        hintText: "Email"),
                    onSaved: (deger) {
                      _email = deger!;
                    },
                    validator: (deger) {
                      if (deger!.isEmpty) {
                        return "Email boş olamaz";s
                      }
                     else if (!EmailValidator.validate(deger!)) {
                        return "Geçerli mail giriniz";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    // initialValue: "melikekizilcik@gmail.com",
                    decoration: InputDecoration(
                        // errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: "Password",
                        hintText: "Password"),
                    onSaved: (deger) {
                      _password = deger!;
                    },
                    validator: (deger) {
                      if (deger!.length < 6) {
                        return "Şifre en az 6 karakter olmalı";
                      } else {
                        //hata döndürmemesi için
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        bool _validate = _formKey.currentState!.validate();
                        if (_validate) {
                          _formKey.currentState!.save();
                          String result =
                              "Username: $_username\nEmail: $_email\nPassword: $_password";

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                            result,
                            style: TextStyle(fontSize: 24),
                          )));
                          _formKey.currentState!.reset();
                        }
                      },
                      child: Text("Onayla")),
                ],
              ),
            ),
          ),
        ));
  }
}
