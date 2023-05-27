import 'package:flutter/material.dart';
import 'package:shoopping/Cycling.dart';
import 'package:shoopping/Fashion.dart';
import 'package:shoopping/Smartphones.dart';
import 'package:shoopping/cloth_page.dart';
import 'package:shoopping/electronics.dart';
import 'package:shoopping/footwear.dart';
import 'package:shoopping/headset.dart';
import 'package:shoopping/homedecor.dart';
import 'package:shoopping/remote.dart';
import 'package:shoopping/shorts.dart';
import 'package:shoopping/skincare.dart';
import 'package:shoopping/toys.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 310,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange[50],
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          onChanged: (value) {
                            // search
                          },
                          decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              hintText: ' Search',
                              prefixIcon: Icon(
                                Icons.search_sharp,
                                color: Colors.black,
                              )),
                          cursorColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange[50],
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 500,
                  child: Card(
                    elevation: 20,
                    margin: EdgeInsets.all(20),
                    color: Colors.purple[800],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            'A Summer Sale',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '20 %  Cashback',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Categories(),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Suggested For You',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SpecialOfferCard(
                        image: "assets/images/offer1.png",
                        category: "Smartphone",
                        numOfBrands: 7,
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              builder) => smartphones()));
                        },
                      ),
                      SpecialOfferCard(
                        image: "assets/images/offer2.png",
                        category: "Fashion",
                        numOfBrands: 9,
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              builder) => fashion()));
                        },
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Popular',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Popular(),
                ),
              ],
            )),
      ),
    );
  }

  Categories() {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => cloth()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/cloth.png',
                    height: 100,
                    width: 100,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Clothes',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => footwear()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/foot.png',
                    height: 100,
                    width: 100,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Footwear',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => electronics()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/electronic.png',
                    height: 100,
                    width: 100,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Electronics',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => homedecor()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/pot.png',
                    height: 100,
                    width: 100,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Home-Decor',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => skincare()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/skin.png',
                    height: 100,
                    width: 100,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Skin Care',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => toys()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/toy.png',
                    height: 100,
                    width: 100,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Toys',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }

  Popular() {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => remote()));
          },
          child: Column(
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
                    'assets/images/Gaming_Remote.png',
                    height: 150,
                    width: 150,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Gaming Remote',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Rs.200',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepOrange[900]),
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => shorts()));
          },
          child: Column(
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
                    'assets/images/shorts.png',
                    height: 150,
                    width: 150,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Shorts',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Rs.100',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepOrange[900]),
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (builder)=>cycling()));
          },
          child: Column(
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
                    'assets/images/Cap.png',
                    height: 150,
                    width: 150,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Cycling Helmet',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Rs.300',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepOrange[900]),
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (builder)=>headset()));
          },
          child: Column(
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
                    'assets/images/wireless headset.png',
                    height: 150,
                    width: 150,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Headphone',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Rs.500',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepOrange[900]),
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 242,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
