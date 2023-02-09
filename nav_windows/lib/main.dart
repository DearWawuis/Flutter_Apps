import 'package:flutter/material.dart';
import 'package:nav_windows/segundapagina.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrimeraRuta(),
    );
  }
}

class PrimeraRuta extends StatelessWidget {
  const PrimeraRuta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Primera Ruta"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SegundaPagina()));
            },
            child: Text("Ir a página 2"),
          ),
        ));
  }
}
