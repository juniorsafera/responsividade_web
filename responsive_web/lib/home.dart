import 'package:flutter/material.dart';

import 'widgets/mobile_appbar.dart';
import 'widgets/web_appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Métodos
  _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(// Início LayoutBuilder
        builder: (context, constraint) {
      // Início builder

      var largura = constraint.maxWidth;
      var alturaBarra = AppBar().preferredSize.height;

      return Scaffold(
        // Início Scaffold
        // se largura for menor que 600
        appBar: largura < 600
            ? PreferredSize(
                // Início PreferredSize
                child: MobileAppBar(),
                preferredSize: Size(largura, alturaBarra)) // Fim PreferredSize
            // se não
            : PreferredSize(
                // Início PreferredSize
                child: WebAppBar(),
                preferredSize: Size(largura, alturaBarra)), // Fim PreferredSize

        body: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _ajustarVisualizacao(largura),
            crossAxisSpacing: 8, // espaço lateral
            mainAxisSpacing: 8, // espaço altura
            children: [],
          ),
        ),
      ); // Fim Scaffold
    } // Fim builder
        ); // Fim LayoutBuilder
  }
}
