import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SizedBox(height: 10,),
                Text("Hoşgeldiniz!",
                  style: TextStyle(
                      color: Colors.blueGrey[700],
                      fontSize: 50,
                      fontWeight:FontWeight.bold),
                ),

                SizedBox(
                    width: 200,
                    child: Image.asset("images/eof3.jpg")),

                Text(
                    "EOF Yazılım",
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontSize: 20,
                            fontWeight:FontWeight.bold,
                        ),
                ),
                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Eposta Adresi",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Şifre",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextButton(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                            "Giriş Yap",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,) )
                      ),
                    ),
                  onPressed: () {
                      Navigator.pop(context);  // GEÇİŞLERDE TEKRAR DRAWER ÇIKMAZSA BURAYI SİL.
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage()
                    ));

                      print("Giriş Yapıldı.");
                    } ),
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Üye değil misin ? ",
                    style: TextStyle(fontWeight: FontWeight.bold,)),
                    TextButton(
                      child: Text(
                        "Kayıt ol",
                        style: TextStyle(color: Colors.blue,
                        fontWeight: FontWeight.bold),
                      ),
                   onPressed: () {
                        print("Kayıt Olundu.");
                   } ),
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
