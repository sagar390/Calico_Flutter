import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../big_text.dart';
import 'OfferList.dart';

//https://codesinsider.com/flutter-appbar-example-tutorial/#:~:text=AppBar%20is%20a%20material%20widget%20in%20flutter%20which,%28%E2%80%98%20x%20%E2%80%98%29%20%26%20actions%20like%20search%2C%20etc.

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
   AnimationController _controller;


  @override
  void initState() {
    super.initState();


    _controller = AnimationController(vsync: this);

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    int _selectedIndex = 0;
     const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
     const List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
        style: optionStyle,
      ),
      Text(
        'Index 1: Refer and Earn',
        style: optionStyle,
      ),
      Text(
        'Index 2: Track Order',
        style: optionStyle,
      ),
      Text(
        'Index 3: Menu',
        style: optionStyle,
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return

      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          title: Text("Calico"),
          backgroundColor: Colors.lightGreen,
          leading: Icon(Icons.arrow_back),
          actions: [
            IconButton(
                  icon: Image.asset('assets/image/bell.png'),

              onPressed: () {
              },
            ),
            IconButton(
              icon: Image.asset('assets/image/wallet.png'),

              onPressed: () {
              },
            ) ,
            IconButton(
              icon: Image.asset('assets/image/track_bike.png'),

              onPressed: () {
              },
            ) ,

          ],
          actionsIconTheme: IconThemeData(size: 32,),

        ),
      body: Column(
        children: [
      Container(
        margin: EdgeInsets.only(top: 10,bottom: 15),
        padding: EdgeInsets.only(left: 0, right: 0),
      /*child: Container(s

        margin: EdgeInsets.only(top: 45,bottom: 15),
      padding: EdgeInsets.only(left: 15, right: 15),
      child : Row(

        children: [

          Image(image: AssetImage("assets/image/calico_logo.png")
          ,width: 100,

          ),
      Expanded(child: Container()),
          IconButton(
            onPressed: (){


            },

            icon: Icon(Icons.cabin,color: Colors.black,),
            color: Colors.white,


          ),

          IconButton(
            onPressed: (){


            },

            icon: Icon(Icons.search,color: Colors.black,),
            color: Colors.white,


          ),



          IconButton(
            onPressed: (){


            },

            icon: Icon(Icons.dangerous,color: Colors.black,),
            color: Colors.white,


          ),
        ],
      ),
    ),*/
      ),
          OfferList(),



        ]

      ),

        bottomNavigationBar: BottomNavigationBar(

          currentIndex: _selectedIndex,
          onTap: (index) => _onItemTapped(index),
          backgroundColor: Colors.white,
            type: BottomNavigationBarType.shifting,
            selectedFontSize: 15,
            selectedIconTheme: IconThemeData(color: Colors.lightGreen),
            selectedItemColor: Colors.lightGreen,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),


          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
                color: Colors.black,

              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business,color: Colors.black,),
              label: 'Refer and Earn',
            ),
            BottomNavigationBarItem(

              icon: Icon(Icons.image,color: Colors.black,),
              label: 'Track Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu,color: Colors.black),
              label: 'Menu',
            ),
          ],
      //    currentIndex: _selectedIndex,
      //    onTap: (index) => setState(() => _selectedIndex = 2),





    )

    );


  }
}
