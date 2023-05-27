import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          title: Text('Settings',
              style: TextStyle(fontSize: 25, color: Colors.white)),
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('Profile Photo',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('Username',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('Change Password',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('Email-Id',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('Mobile Number',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        )
    );
  }
}
