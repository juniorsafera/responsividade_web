 import 'package:flutter/material.dart';

import 'widgets/mobile_appbar.dart';
import 'widgets/web_appbar.dart';

 class Home extends StatefulWidget {
   const Home({ Key? key }) : super(key: key);
 
   @override
   _HomeState createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   @override
     Widget build(BuildContext context) {
       return  LayoutBuilder
       ( // Início LayoutBuilder
         builder: (context, constraint)
        {    // Início builder

           var largura = constraint.maxWidth;
           var alturaBarra = AppBar().preferredSize.height;

          return Scaffold(  // Início Scaffold
          // se largura for menor que 600   
            appBar: largura < 600 ?           
             PreferredSize( // Início PreferredSize
              child: MobileAppBar(),
               preferredSize: Size(largura, alturaBarra)
                           ) // Fim PreferredSize
                // se não 
            : PreferredSize( // Início PreferredSize
              child: WebAppBar(), 
              preferredSize: Size(largura, alturaBarra)
                           ),// Fim PreferredSize
         ); // Fim Scaffold
      }   // Fim builder
     ); // Fim LayoutBuilder
   
   }
 }