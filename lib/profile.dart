import 'package:flutter/material.dart';
import 'package:shoopping/about.dart';
import 'package:shoopping/account.dart';
import 'package:shoopping/help.dart';
import 'package:shoopping/setting.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 250.0,
                child: Image.asset(
                  'assets/images/background.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 1.0,
                child: Container(
                  child: Image.asset('assets/images/profile.png'),
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(105.0),
                    border:
                        Border.all(width: 5, color: Colors.deepOrange.shade900),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Ayushi',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => account(),));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),),
              tileColor: Colors.grey[300],
              leading: Icon(Icons.account_circle_outlined,color: Colors.deepOrange[300]),
              title: Text('My Account',style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => setting(),));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),),
              tileColor: Colors.grey[300],
              leading: Icon(Icons.settings,color: Colors.deepOrange[300]),
              title: Text('Settings',style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => about(),));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),),
              tileColor: Colors.grey[300],
              leading: Icon(Icons.info_outline,color: Colors.deepOrange[300]),
              title: Text('About',style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => help(),));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),),
              tileColor: Colors.grey[300],
              leading: Icon(Icons.help_outline,color: Colors.deepOrange[300]),
              title: Text('Help',style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
