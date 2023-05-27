import 'package:flutter/material.dart';

class smartphones extends StatefulWidget {
  const smartphones({Key? key}) : super(key: key);

  @override
  State<smartphones> createState() => _smartphonesState();
}

class _smartphonesState extends State<smartphones> {
  final phones =['Redmi','Realme','Oppo','Vivo','Poco','Oneplus','iphone'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[900],
        title:Text('Smartphones',style: TextStyle(fontSize: 25)),
      ),
      body:ListView.builder(itemCount: 7,itemBuilder: (context,index){
        return ListTile(
          title: Text('${phones[index]}',style: TextStyle(fontSize: 17)),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
        );
      }),
    );
  }
}
