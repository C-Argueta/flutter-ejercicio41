import 'package:ejercicio4/src/pages/cripto.dart';
import 'package:ejercicio4/src/pages/home.dart';
import 'package:ejercicio4/src/pages/operaciones.dart';
import 'package:ejercicio4/src/pages/operaciones2.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu principal',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       initialRoute: '/',
       routes: {
        '/':(context)=>const MyHomePage(title: 'Menu'),
        '/operaciones':(context)=> const operaciones(),
        '/operaciones2':(context)=>const operaciones2(),
        '/cripto':(context)=>const Cripto(),
       },
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}