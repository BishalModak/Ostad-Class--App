import 'package:flutter/material.dart';

class extraClass extends StatefulWidget {
  const extraClass({super.key});

  @override
  State<extraClass> createState() => _extraClassState();
}

class _extraClassState extends State<extraClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // ekhane joto dibo totota option ashbe
      child: Scaffold(
        appBar: AppBar(title: Text('This is AppBar'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Fav',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Settings',
            )
          ]),
        ),

        body: TabBarView(
            children:[
              Center(child: Icon(Icons.home,size: 90,)),
              Center(child: Icon(Icons.star,size: 90,)),
              Center(child: Icon(Icons.settings,size: 90,)),
        ]),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius:38,
                      backgroundImage: NetworkImage(
                        'https://scontent.fdac31-2.fna.fbcdn.net/v/t39.30808-6/411159995_1153285459169009_3571229238829393846_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFZAQsD9PmEp-xvc8VgPY73d555IBjaQP13nnkgGNpA_ZRMej1ayd6YAt9PXzYfk_57uV_c3tl2iYMwseRiOOV0&_nc_ohc=XCDro7BidoAQ7kNvwELsZJb&_nc_oc=Adm12GZpIBnpnugcJeBsKMoTZf0_phFec4SXNoArWaGp23ybnU1qGwc6io1pE16MZ7g&_nc_zt=23&_nc_ht=scontent.fdac31-2.fna&_nc_gid=VXCZO_nnGQVzY2k1UGgYeg&oh=00_AfLAkzlXBkKA7ypJevSeKV-UGMYEK2HlVYL9oJncDc1-9Q&oe=683721FE',
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Bishal Chandro Modak',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),

                    Text(
                      'bishalchandromodak@gmail.com',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              ListTile(title: Text('home'), onTap: () {}),
              Divider(    //it is use for underline of a section
                thickness: 1,
                color: Colors.blue,
              ),
              ListTile(title: Text('Item-1'), onTap: () {}),
              Divider(    //it is use for underline of a section
                thickness: 1,
                color: Colors.blue,
              ),
              ListTile(title: Text('Item-2'), onTap: () {}),

            ],
          ),
        ),
      ),
    );
  }
}
