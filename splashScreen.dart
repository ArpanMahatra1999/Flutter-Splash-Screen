import 'dart:async';

import 'package:flutter/material.dart';
//Type Next Screen
import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //Splash Screen
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        //Instead of HomeScreen type Next Page's name
          builder: (context) => HomeScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/25*9,
            ),
            Container(
              height: MediaQuery.of(context).size.width/3,
              width: MediaQuery.of(context).size.width/3,
		//Try next Image
              child: Image.network(
                "https://image.winudf.com/v2/image/Y29tLnRob3VnaHRyaXBwbGVzLnNkZW1vX2ljb25fMTUzNzczNzY5Ml8wMTU/icon.png?w=170&fakeurl=1",
                fit: BoxFit.cover,
                ),
            ),
	//Try next name
            Center(child: Text("SPLASH SCREEN", style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),),),
          ],
        ),
      ),
    );
  }
}
