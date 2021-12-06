import 'package:drawer/slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'list.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Drawerpage(),
));

class Drawerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text("Shopping"),
    ),
    body: Column(
      children: <Widget>[
        Container(
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1481824429379-07aa5e5b0739?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODN8fGxhZGllcyUyMGZhc2hpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.2),
                  Colors.black.withOpacity(.2)
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Our New Products",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "View More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.white, size: 15)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),













          ),
        ),
      ],
    ),
    drawer: Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("TRends Collections"),
            accountEmail: Text("Brand New Products"),
            currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fG1lbnMlMjBnbGFzc2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                )),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1549057446-9f5c6ac91a04?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGdyb3VwJTIwb2YlMjBmcmllbmRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
          ),

          ListTile(

            title: Text("Mens Wear"),
            leading: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Otherpage("")));
            },
          ),


          ListTile(
            title: Text("Watches"),
            leading: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyApp()));
            },
          ),
          ListTile(
            title: Text("Shoes"),
            leading: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyApp()));
            },
          ),
          ListTile(
            title: Text("Sunglasses"),
            leading: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyApp()));
            },
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
        ],
      ),
    ),
  );
}
