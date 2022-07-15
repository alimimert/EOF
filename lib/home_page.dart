import 'package:flutter/material.dart';
import 'login_page.dart';
import 'notifications_page.dart';
import 'contactus_page.dart';
import 'aboutus_page.dart';
import 'news_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: Text("Ana Sayfa"),
        backgroundColor: Colors.orangeAccent,
      ),

      body:

          HomePageItem(context),
          drawer: NavigationDrawer(),

    );
  }
}

  class NavigationDrawer extends StatelessWidget {
    const NavigationDrawer({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Header(context),
                MenuItems(context),

              ],
          ),
        ),
      );

    }
    Widget Header(BuildContext context) => Container(
      color: Colors.orangeAccent,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,),
        child:
         SizedBox(
             height: 200,
             child: Image.asset("images/eof3.jpg")),

    );

    Widget MenuItems(BuildContext context) => Container(
          padding: EdgeInsets.all(24),
          child: Wrap(
            //runSpacing: 16,
            children: [

              ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text("Ana Sayfa"),

                onTap: () {
               Navigator.of(context).pushReplacement(MaterialPageRoute(
                   builder: (context) => HomePage()
               ));
             },

          ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Bize Ulaşın"),
                onTap: ()
            {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => ContactUsPage()
              ));
            },

          ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("Hakkımızda"),
                onTap: ()
            {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => AboutUs()
              ));
            },

          ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.notifications_outlined),
                title: Text("Bildirimler"),
                onTap: ()
            {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => NotificationsPage()
              ));
            },

          ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Çıkış Yap"),
                onTap: ()
                {
                  Navigator.pop(context);  // GEÇİŞLERDE TEKRAR DRAWER ÇIKMAZSA BURAYI SİL.
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginPage()
                  ));
                },

              ),
            ],
    ),
        );
    }

    Widget HomePageItem(BuildContext context) =>

        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16/3,
                child: Container(
                    decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 45)],
                  border: Border.all(color: Colors.blueGrey),

                ),
                 // height: 70,
                  child: Center(
                    child: Text("Son Haberler!",
                      style:
                      TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                  )
                )
              ),
            ),

            Expanded(
                child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index){
                  return Padding(
                      padding: EdgeInsets.all(2),
                  child: TextButton(
                    onPressed:() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NewsPage())
                      );
                      },
                    child: Container(

                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          border: Border.all(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(15)
                      ),

                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Yeni mobil uygulama çıktı.",
                            style: TextStyle(color: Colors.orangeAccent ,
                                fontSize:20, fontWeight: FontWeight.bold ),),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                    height: 160,

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(alignment: Alignment.topCenter,
                                        child: Image.asset("images/app.jpg")),
                                  )),
                              Text("Yeni mobil uygulama çıktı.", style:
                              TextStyle(color: Colors.blueGrey[900]),),
                              Text(" Google Play store veya APP store üzerinden indirebilirsiniz.",
                              style: TextStyle(color: Colors.blueGrey[900]),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                  );
                },
                )
            )
          ],
        );







