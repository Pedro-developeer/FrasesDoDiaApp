import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Somos feitos por nossas escolhas.",
    "Eu prefiro errar do que não fazer nada.",
    "Posso falhar, mas não vou desistir.",
    "Se estiverem esperando que eu desista, é bom esperarem sentados.",
    "Nunca torne-se um monstro para derrotar outro.",
    "A escalada é longa, mas a vista vale a pena!.",
    "Passe pelo inferno e ascenda. faça-os lembrarem de você.",
    "Toda vez que você sangra em busca da grandeza implacavelmente você sobrevive",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrases() {
    // 0, 1 , 2, 3
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        // width: double.infinity,
       // decoration:
        //    BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.green,
              onPressed: _gerarFrases,
            )
          ],
        ),
      ),
      ),
    );
  }
}
