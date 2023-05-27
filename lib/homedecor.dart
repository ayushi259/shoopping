import 'package:flutter/material.dart';

class homedecor extends StatefulWidget {
  const homedecor({Key? key}) : super(key: key);

  @override
  State<homedecor> createState() => _homedecorState();
}

class _homedecorState extends State<homedecor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[900],
        title: Text('Home Decor',
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
                  'assets/images/vase.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Vase',
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
                  'assets/images/painting.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Paintings',
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
                  'assets/images/Furniture.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Furnitures',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ]),
    );
  }
}
