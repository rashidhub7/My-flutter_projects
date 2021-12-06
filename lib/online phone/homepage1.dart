import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/cart.dart';


import 'item.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homepage(),
));

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> images = [
      "assets/images/sam.jpg",
      "assets/images/final.jpg",
      "assets/images/oman.jpg",
      "assets/images/moto.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "عمان فنس/Oman Phones",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),

        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search products...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.all(6),
                  child: Icon(
                    Icons.add_alert,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              child: ListTile(
                title: Text(
                  "item details",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                leading: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Item()));
                },
              ),
            ),
            Container(
              child: ListTile(
                title: Text(
                  "My Cart(2)",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                leading: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Cart()));
                },
              ),
            ),
          ],
        ),
      ),



      body: Column(
        children: <Widget>[
          Container(

            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://media.istockphoto.com/photos/female-hand-hold-phone-on-merry-christmas-red-background-girl-using-picture-id1184015435?b=1&k=20&m=1184015435&s=170667a&w=0&h=t3HZs5w_g7ESMYfzKFFgSy3BvOcSK8CxUYm4UI4z0UE="),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            child: Padding(
              padding: (EdgeInsets.only(right: 400)),
              child: Text(
                "Mobile Phones",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 380),
            child: ElevatedButton(

              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.red)
              ),
              onPressed: () {},
              child: Text(
                "VIEW ALL",
                style: TextStyle(color: Colors.white,fontSize: 9),
              ),
            ),
          ),

          Center(
              child:Container(
                width: 430,
                height: 258,
                child: GridView.builder(
                  itemCount: images.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 2.0,

                  ),

                  itemBuilder: (BuildContext context, int index) {

                    return Image.asset(images[index]);
                  },
                ),
              )
          ),

          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white,

                  selectedFontSize: 14,
                  unselectedFontSize: 14,
                  onTap: (value) {

                  },
                  items: [
                    BottomNavigationBarItem(
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.red),
                      ),
                      icon: Icon(
                        Icons.home,
                        color: Colors.red,
                      ),
                    ),
                    BottomNavigationBarItem(
                      title: Text("Search"),
                      icon: Icon(Icons.search),
                    ),
                    BottomNavigationBarItem(
                      title: Text('Categories'),
                      icon: Icon(Icons.category_outlined),
                    ),
                    BottomNavigationBarItem(
                      title: Text('Cart'),
                      icon: Icon(Icons.shopping_cart_rounded),
                    ),
                  ],
                ),
              ),

            ),
          ),

        ],
      ),
    );
  }
}



