import 'package:eof/contactus_page.dart';
import 'package:eof/home_page.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Hakkımızda"),
        backgroundColor: Colors.orangeAccent,
      ),

      body:
     // Text("Hakkımızda", style: TextStyle(fontSize: 25),),
        Column(
          children: [
            Image.asset("images/aboutus2.jpg"),
            SizedBox(height: 10,),
            Text("Biz Kimiz ?" ,
              style: TextStyle(
                  color: Colors.black54 ,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("xxxx Tarihinde kurulduk. xxxx sektöründe hizmet vermekteyiz.",
              style: TextStyle(fontSize: 18)),
            ),
            //SizedBox(height: 10,),
            Spacer(),
            Text("Bize ulaşmak için:",
            style: TextStyle(fontSize: 15)),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContactUsPage()
                ));
              },
              child: Icon(
                Icons.arrow_circle_right, color: Colors.orangeAccent, size: 70,),
            ),
          ],
        ),
    );
  }
}
