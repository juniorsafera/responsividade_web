import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({ Key? key }) : super(key: key);

  @override
  _WebAppBarState createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:  Row(children: [

        Image.asset("imagens/logo.png", 
       // fit: BoxFit.contain,
        ),

        Expanded(child: Container()),

        IconButton(onPressed: (){}, icon: Icon(Icons.search)),

        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_rounded)),

        OutlinedButton(
          onPressed: (){},
          child: Text('Cadastrar'),
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
            primary: Colors.white,
          ), ),

          SizedBox(width: 8,),

        OutlinedButton(
          onPressed: (){},
          child: Text('Entrar'),
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.orange,
            primary: Colors.white,
          ), ),
      ],)
    );
  }
}