import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[300],
        title: Text('about',
            style: TextStyle(fontSize: 25, color: Colors.white)),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Terms & Conditions',style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Privacy Policy',style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Return Policy',style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      )
    );
  }
}
