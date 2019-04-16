import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState(); 
}

class _HomeState extends State<Home> {


  int _people = 0;
  String _infotext = "Pode Entrar!";

  void _changePeople(int valor) {
    setState(() {
      _people += valor;

      if (_people<0) {
        _infotext = "Mundo Louco em!!";
      } else if (_people>=10) {
        _infotext = "Lotado!!";
      } else {
        _infotext = "Pode Entrar!";
      }

    });
    
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/restaurante.jpg", fit: BoxFit.cover, height: 1000.0,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text("Pessoas: $_people", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                          child: Text("+1", style: TextStyle(fontSize: 40.0, color: Colors.white)),
                          onPressed: () {
                            _changePeople(1);
                          },
                        ),
                ),
                new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                          child: Text("-1", style: TextStyle(fontSize: 40.0, color: Colors.white)),
                          onPressed: () {
                            _changePeople(-1);
                          },
                        ),
                )
              ],
            ),

            Text("$_infotext", style: TextStyle(color: Colors.white, fontSize: 30.0, fontStyle: FontStyle.italic))

          ],
        )
      ]
    ); 
  }
}