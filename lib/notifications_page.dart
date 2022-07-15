import 'package:eof/home_page.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Bildirimler"),
        backgroundColor: Colors.orangeAccent,
      ),

      body:
      Center(
          child:
          Text("Hiç Bildiriminiz Bulunmamaktadır!",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
    );
  }
}

