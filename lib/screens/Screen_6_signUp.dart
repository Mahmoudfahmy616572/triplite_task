import 'package:flutter/material.dart';
import 'package:triplite_task/Location.dart';
class Screen_6 extends StatefulWidget {
  const Screen_6({Key? key}) : super(key: key);

  @override
  State<Screen_6> createState() => _Screen_6State();
}

class _Screen_6State extends State<Screen_6> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  bool isPassword = true;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF35454),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/Image/Logo White.png",width: 350,height: 150,),
            Container(
              margin: const EdgeInsets.fromLTRB(26, 0.8, 26, 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24.0,
                    ),
                    Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Name"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 16.0),
                      child: Text(
                        "Email ",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                    Container(
                      color: Colors.white60,
                      margin: EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !value.contains("@")) {
                            return "Enter Valid Email";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            email = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 16.0),
                      child: Text(
                        "Password",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                    Container(
                      color:Colors.white60,
                      margin: EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Valid Password";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            password = value!;
                          });
                        },
                        keyboardType: TextInputType.text,
                        obscureText: isPassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open_rounded),
                          suffixIcon: GestureDetector(
                            child: Icon(isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                            onTap: () {
                              setState(() {
                                isPassword = !isPassword;
                              });
                            },
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Forget Password ?",style: TextStyle(fontSize: 12),),
                    ),
                    SizedBox(height: 8.0,),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: isLoading ? const Center(child: CircularProgressIndicator(),): ElevatedButton(
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                              _formKey.currentState!.save();

                            }
                          },
                          child: Text("SignIn",style: TextStyle(color: Colors.white),),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xffF35454))
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40,),
            Row(children: [
              SizedBox(width: 110,),
              Image.asset("assets/Image/Facebook.png"),
              SizedBox(width: 30,),
              Image.asset("assets/Image/Google.png"),
            ],),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 90,),
                Text(
                  "Don't have an account?   ",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Location()));
                    }, child: Text("sign up",style: TextStyle(color: Colors.black),))

              ],
            )
          ],
        ),
      ),

    );
  }
}
