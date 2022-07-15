import 'package:flutter/material.dart';


class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Örnek Haber"),
        backgroundColor: Colors.orangeAccent,
      ),

      body:
      Center(
          child:
          Text("Örnek Haber",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
    );
  }
}