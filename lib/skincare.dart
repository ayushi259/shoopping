import 'package:flutter/material.dart';

class skincare extends StatefulWidget {
  const skincare({Key? key}) : super(key: key);

  @override
  State<skincare> createState() => _skincareState();
}

class _skincareState extends State<skincare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[900],
        title: Text('Skin Care',
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
                  'assets/images/bodywash.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Bodywash',
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
                  'assets/images/lotion.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Bodylotion',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ]),
    );
  }
}
