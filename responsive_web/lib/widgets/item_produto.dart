import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemProduto extends StatelessWidget {
  // const itemProduto({ Key? key }) : super(key: key);
  // vamos criar outro construtor
  String descricao;
  String preco;
  String imagem;

  // nosso contrutor
  itemProduto(this.descricao, this.preco, this.imagem);

     

  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
          color: Colors.white,
        ),

        padding: EdgeInsets.all(16),
        child: Column(

          children: [

            // Imagem do produto
            Expanded(
              flex: 8,
              child: Image.asset(
                "imagens/$imagem",
                fit: BoxFit.contain,
              ),
            ),

            // Descrição do produto
            Expanded(flex: 1, child: Text(this.descricao)),

            // Preço do produto
            Expanded(
              flex: 1,
              child: Text(
                "R\$ ${this.preco}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            
          ],

        )
        );
  }
}
