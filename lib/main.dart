import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String appTitle = "Flutter layout demo";
    Color scaffoldColor = Colors.blueGrey[50]!; // Um cinza-azulado claro
    Color containerColor = Colors.white;
    Color appBarColor = Colors.indigo[700]!;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle, style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: appBarColor,
        ),
        backgroundColor: scaffoldColor,
        body: Center(
          child: Container(
            height: 300,
            color: containerColor,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Row of buttons", style: TextStyle(fontSize: 20)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(onPressed: () {}, child: Text("Botao 01")),
                    SizedBox(width: 12),
                    OutlinedButton(onPressed: () {}, child: Text("Botao 02")),
                    SizedBox(width: 12),
                    OutlinedButton(onPressed: () {}, child: Text("Botao 03")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
