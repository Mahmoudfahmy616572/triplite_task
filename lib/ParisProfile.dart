import 'package:flutter/material.dart';

import 'Values/UsedColor.dart';

class ParisProfile extends StatefulWidget {
  const ParisProfile({Key? key}) : super(key: key);

  @override
  State<ParisProfile> createState() => _ParisProfileState();
}

class _ParisProfileState extends State<ParisProfile> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: UsedColor.AppBar,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding:  EdgeInsets.only(left: 0),
                    child: Text(
                      "back",
                      style:  TextStyle(
                          color: UsedColor.Location,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      'Paris',
                      style: TextStyle(
                          color: UsedColor.Location,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Image.asset(
                        "assets/Image/searching-magnifying-glass.png"),
                  )
                ],
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/Image/Mask  Image.png",
                      width: 390,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80,top: 120),
                      child: Image.asset("assets/Image/IMG 02.png"),
                    ),
                  ],
                ),
              ],
            ),
             Row(children: const [
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: Text("DisneyLand Paris",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              )

            ],),
            Row(children: const [
              Text("Depature",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),

            ],),
            const SizedBox(height: 10,),
            Row(children: const [

              Text("23rd Oc 2017",style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.grey),)

            ],),
            const SizedBox(height: 20,),

            Row(children: const [
              Text("Depature",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),

            ],),
            const SizedBox(height: 10,),
            Row(children: const [

              Text("23rd Oc 2017",style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.grey),)

            ],),
            const SizedBox(height: 20,),

            Row(children: const [
              Text("Discover 7 World Heritage Sites in this tour.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),

            ],),
            const SizedBox(height: 10,),
            Row(children: const [

              Text("Fans of Mickey can visit Disneyland Paris which is located 32 km,",style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.grey),)

            ],),
            const SizedBox(height: 29,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white10,
                child: Row(children: const [
                  Text("Overview",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
                  SizedBox(width: 29,),

                  Text("Places",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  SizedBox(width: 29,),

                  Text("itinerary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  SizedBox(width: 29,),
                  Text("review",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),


                ],

                ),
              ),
            ),

          ],
        ),
      ), bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black,),
          label: '',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.heart_broken, color: Colors.black,),
          label: '',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag, color: Colors.black,),
          label: '',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_rounded, color: Colors.black,),
          label: '',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.man, color: Colors.black,),
          label: '',
          backgroundColor: Colors.white,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    ),
    );
  }
}
