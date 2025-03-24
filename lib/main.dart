import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String appTitle = "Flutter layout demo";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle, style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.indigo[700],
          leading: Icon(Icons.menu, color: Colors.white),
        ),
        body: Center(child: ButtonSection()),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "ROW OF BUTTONS",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: () {}, child: Text("BUTTON 01")),
              SizedBox(width: 12),
              OutlinedButton(onPressed: () {}, child: Text("BUTTON 02")),
              SizedBox(width: 12),
              OutlinedButton(onPressed: () {}, child: Text("BUTTON 03")),
            ],
          ),
        ],
      ),
    );
  }
}