import 'package:flutter/material.dart';

class electronics extends StatefulWidget {
  const electronics({Key? key}) : super(key: key);

  @override
  State<electronics> createState() => _electronicsState();
}

class _electronicsState extends State<electronics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[900],
        title: Text('Electronics',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: Colors.white)),
      ),
      body: GridView.count(
          crossAxisCount: 2, scrollDirection: Axis.vertical, children: [
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/mobile.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Mobile',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/laptop.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Laptop',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/speaker.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Speakers',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ]),
    );
  }
}
