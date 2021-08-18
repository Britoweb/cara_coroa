import 'package:cara_coroa/JogarMoeda.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color greenApp = const Color(0xFF61bd86);

  void _jogarMoeda() {

    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => JogarMoeda(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenApp,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            Padding(
                padding: EdgeInsetsDirectional.all(16),
                child: GestureDetector(
                  onTap: _jogarMoeda,
                  child: Image.asset("images/botao_jogar.png"),
                ))
          ],
        ),
      ),
    );
  }
}
