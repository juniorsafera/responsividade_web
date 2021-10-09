import 'package:flutter/material.dart';
import 'package:responsive_web/widgets/item_produto.dart';

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
            children: [
              itemProduto("Kit Multimídia", "2.200,00", "p1.jpg"),
              itemProduto("Pnew Goodyear aro 16", "800,00", "p2.jpg"),
              itemProduto("Samsung 9", "4.100,00", "p3.jpg"),
              itemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
              itemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
              itemProduto("iPhone 8g", "1.920,00", "p6.jpg"),
              itemProduto("Kit Multimídia", "2.200,00", "p1.jpg"),
              itemProduto("Pnew Goodyear aro 16", "800,00", "p2.jpg"),
              itemProduto("Samsung 9", "4.100,00", "p3.jpg"),
              itemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
              itemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
              itemProduto("iPhone 8g", "1.920,00", "p6.jpg"),
              itemProduto("Kit Multimídia", "2.200,00", "p1.jpg"),
              itemProduto("Pnew Goodyear aro 16", "800,00", "p2.jpg"),
              itemProduto("Samsung 9", "4.100,00", "p3.jpg"),
              itemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
              itemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
              itemProduto("iPhone 8g", "1.920,00", "p6.jpg"),
            ],
          ),
        ),
      ); // Fim Scaffold
    } // Fim builder
        ); // Fim LayoutBuilder
  }
}
