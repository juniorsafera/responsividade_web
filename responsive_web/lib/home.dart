 import 'package:flutter/material.dart';

import 'widget/mobile_appbar.dart';

 class Home extends StatefulWidget {
   const Home({ Key? key }) : super(key: key);
 
   @override
   _HomeState createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     return  LayoutBuilder(
       builder: (context, constraint){

         var largura = constraint.maxWidth;
         var alturaBarra = AppBar().preferredSize.height;

         return Scaffold(
           appBar: largura < 600
           ? PreferredSize(child: MobileAppBar(), preferredSize: Size(largura, alturaBarra))
           : AppBar(),
         );

     });
   }
 }