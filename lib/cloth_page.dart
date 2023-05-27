import 'package:flutter/material.dart';

class cloth extends StatefulWidget {
  const cloth({Key? key}) : super(key: key);

  @override
  State<cloth> createState() => _clothState();
}

class _clothState extends State<cloth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[900],
        title: Text('Clothes',
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
                  'assets/images/mencloth.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Men',
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
                  'assets/images/womencloth.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Women',
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
                  'assets/images/kidscloth.png',
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Kids',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ]),
    );
  }
}
