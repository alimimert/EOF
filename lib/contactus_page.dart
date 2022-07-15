import 'package:eof/home_page.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[200],
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Bize Ulaşın"),
        backgroundColor: Colors.orangeAccent,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Image.asset(
                  "images/eof3.jpg",
                  height: 200,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              "Yardıma ihtiyacınız varsa \n Bize Ulaşın.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 17,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20,
                          )
                        ]
                    ),
                    height: 100,
                    width: 150,

                    //color: Colors.white,
                    child: Column(
                      children: [
                        Icon(
                          Icons.alternate_email, color: Colors.orange, size: 50,),
                        Text("E Mail Adresi"),
                        Text("eof@eof.com",
                          textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20,
                          )
                        ]
                    ),
                    height: 100,
                    width: 150,
                    // color: Colors.white,
                    child: Column(
                      children: [
                        Icon(Icons.help, color: Colors.orange, size: 50,),
                        Text("       Faks\n 123456789"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20,
                          )
                        ]
                    ),
                    height: 100,
                    width: 150,
                    // color: Colors.white,
                    child: Column(
                      children: [
                        Icon(Icons.phone, color: Colors.orange, size: 50,),
                        Text("+90 555 177 6628 "),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20,
                          )
                        ]
                    ),
                    //color: Colors.white,
                    child: Column(
                      children: [
                        Icon(Icons.home, color: Colors.orange, size: 50,),
                        Text("Adres: \n Denizli Türkiye "),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text("EOF hesabıdır.",
              style: TextStyle(color: Colors.orange),),
          ],
        ),
      ),
    );
  }
}