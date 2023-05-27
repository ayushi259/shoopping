import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  const favourite({Key? key}) : super(key: key);

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[300],
        title: Text('Favourites',style: TextStyle(fontSize: 25,color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_border,size: 40,color: Colors.grey),
            SizedBox(
              height: 20,
            ),
            Text('No Favourite Item',style: TextStyle(fontSize: 25,color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
