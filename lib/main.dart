import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İdea Teknoloji Çözümleri App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.blue[600]),
      home: Scaffold(
          appBar: AppBar(title: Text("İdea Teknoloji Çözümleri App",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),),
          body: LoginHome()),

    );
  }
}

class PageProduct extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ürün Sayfası")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text("Geri dön", style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal)),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}


class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LoginHome(context);
  }
}

Widget _LoginHome (BuildContext context)
{
  final emailField = TextField(
    obscureText: false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Kullanıcı adı",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
  );

  final passwordField = TextField(
    obscureText: true,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Parola",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
  );


  final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.blue[300],
    child: MaterialButton(
      minWidth: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageProduct())),

      child: Text("Giriş yap",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),
    ),
  );


  final registerButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.blue[300],
    child: MaterialButton(
      minWidth: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {

      },

      child: Text("Kayıt ol",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),
    ),
  );


  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[



            Image.asset("images/image.png"),

            SizedBox(height: 10.0),
            emailField,

            SizedBox(height: 10.0),
            passwordField,

            SizedBox(height: 15.0),
            loginButton,

            SizedBox(height: 10.0),
            registerButton


          ],
        ),
      ),
    ),
  );




}



















