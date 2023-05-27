import 'package:flutter/material.dart';

class setting extends StatelessWidget {
  const setting({Key? key}) : super(key: key);

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
                title: Text('Message',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('address',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('General',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('App-Language',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('log out',style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        )
    );
  }
}
