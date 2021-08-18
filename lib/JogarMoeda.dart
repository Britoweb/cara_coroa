import 'dart:math';

import 'package:flutter/material.dart';

class JogarMoeda extends StatefulWidget {
  String valor;

  JogarMoeda(this.valor);

  @override
  _JogarMoedaState createState() => _JogarMoedaState();
}

class _JogarMoedaState extends State<JogarMoeda> {



  @override
  Widget build(BuildContext context) {

    var caminhoImagem = "images/moeda_cara.png";

    if( widget.valor == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xFF61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            Padding(
                padding: EdgeInsetsDirectional.all(16),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset("images/botao_voltar.png"),
                ))
          ],
        ),
      ),
    );
  }
}
