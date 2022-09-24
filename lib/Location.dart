import 'package:flutter/material.dart';
import 'package:triplite_task/Tours.dart';
import 'SideBar.dart';
import 'Values/UsedColor.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int _selectedIndex = 0;
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
                  TextButton(
                    onPressed: () { Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const SideBar()));},
                    child: Image.asset(
                      "assets/Image/Side Manu Arrow.png",
                      height: 14,
                      width: 25,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text(
                      'Location',
                      style: TextStyle(color: UsedColor.Location),
                    ),
                  ),
                ],
              ),
            ],
          )),
      body: Container(
        width: 375,
        height: 914,
        child: Padding(
          padding: const EdgeInsets.only(left: 40,),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Tours()),
                    );
                  },  child:
                  Image.asset(
                    "assets/Image/London.png",
                    width: 295,
                    height: 120,
                  ),
                  )],
              ),

              Row(
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Tours()),
                    );
                  }, child:
                  Image.asset(
                    "assets/Image/France.png",
                    width: 295,
                    height: 120,
                  ),
                  )
                ],
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const Tours()),
                      );
                    },
                    child: Image.asset(
                      "assets/Image/India.png",
                      width: 295,
                      height: 120,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Tours()),
                    );
                  }, child:
                  Image.asset(
                    "assets/Image/England.png",
                    width: 295,
                    height: 120,
                  ),
                  )],
              ),
              Row(
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Tours()),
                    );
                  }, child:
                  Image.asset(
                    "assets/Image/Australia.png",
                    width: 295,
                    height: 120,
                  ),
                  )],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: '',
            backgroundColor: Colors.white24,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken, color: Colors.black,),
            label: '',
            backgroundColor: Colors.white24,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.black,),
            label: '',
            backgroundColor: Colors.white24,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded, color: Colors.black,),
            label: '',
            backgroundColor: Colors.white24,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man, color: Colors.black,),
            label: '',
            backgroundColor: Colors.white24,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

    );
  }
}
