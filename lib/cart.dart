import 'package:flutter/material.dart';
import 'package:shoopping/bill.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[300],
        title: Text('Your Cart',
            style: TextStyle(fontSize: 25, color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/Gaming_Remote.png',
                    height: 100,
                    width: 100,
                  )),
              title: Text(
                'Gaming Remote',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Rs.200',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepOrange[900]),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/Cap.png',
                    height: 100,
                    width: 100,
                  )),
              title: Text(
                'Sports Cap',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Rs.300',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepOrange[900]),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange[900],
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bill(),));
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Buy', style: TextStyle(fontSize: 25)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
