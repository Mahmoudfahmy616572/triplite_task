import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'Values/UsedColor.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
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
                  Padding(
                    padding: const EdgeInsets.only(left: 300),
                    child: Image.asset(
                      "assets/Image/cancel.png",
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Row(
              children: [Image.asset("assets/Image/Profile.png")],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 160),
            child: Row(
              children: const [
                Text(
                  "mahmoud",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Row(
              children: const [
                Text(
                  "Mahmoud@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/Image/bell.png",color:Color(0xFFF33738),),
                    SizedBox(width: 20,),
                    const Text(
                      "Natification",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Image.asset("assets/Image/pin.png",color: Color(0xFFDC58FB),),
                    SizedBox(width: 20,),
                    const Text(
                      "Tours",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Image.asset("assets/Image/global.png",color: Color(0xFF5252D8),),
                    SizedBox(width: 20,),
                    const Text(
                      "Language",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Image.asset("assets/Image/friend.png",color: Color(0xFF3075F9),),
                    SizedBox(width: 20,),
                    const Text(
                      "Invite Friends",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),



                const Divider(
                  color: Colors.black,
                ),


                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset("assets/Image/headset-with-microphone.png",color: Color(0xFFF9CA1C),),
                    SizedBox(width: 20,),

                    const Text(
                      "Help Center",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Image.asset("assets/Image/Icon.png",color: Color(0xFF4AD76D),),
                    SizedBox(width: 20,),
                    const Text(
                      "Sttinge",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Image.asset("assets/Image/logout.png",color: Color(0xFF707070),),
                    SizedBox(width: 20,),
                    const Text(
                      "Log out",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
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
