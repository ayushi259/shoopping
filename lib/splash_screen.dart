import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoopping/Bootomnav.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3, milliseconds: 34), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavBar(0),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'SHOPAHOLIC',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.deepOrange[900],
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  shadows: [Shadow(color: Colors.black, blurRadius: 14)]),
            ),
            Lottie.asset('assets/lottie.json'),
          ],
        ),
      ),
    );
  }
}
