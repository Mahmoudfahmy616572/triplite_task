// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'screen_3.dart';


class Screen_2 extends StatelessWidget {
  const Screen_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Image.asset("assets/Image/Logo Color.png",width: 300,height: 250,),
          Image.asset("assets/Image/Vector Image.png"),
          const Text("plan your trip ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("plan your trip, choose your destination,",style: TextStyle(fontSize:10 ),),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8,right: 8,top: 1),
            child: Text(" pick the pest place for your holiday",style: TextStyle(fontSize: 10),),
          ),
          Flexible(child: Image.asset("assets/Image/Img_2.jpg",width: 50,height: 50,)),
          Flexible(

            child: Padding(
              padding: const EdgeInsets.only(left: 250,),
              child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white60),),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Screen_3() ) );
                  }, child: const Text("Next",style: TextStyle(color: Colors.red),)),
            ),
          ),
          const SizedBox(height: 10,)

        ],
      ),
    );
  }
}