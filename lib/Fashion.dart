import 'package:flutter/material.dart';

class fashion extends StatefulWidget {
  const fashion({Key? key}) : super(key: key);

  @override
  State<fashion> createState() => _fashionState();
}

class _fashionState extends State<fashion> {
  final brands =['Gucci','Chanel','Prada','Burberry','Louis Vuitton','Nike','Zara','Adidas','H&M',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[900],
        title:Text('Fashion',style: TextStyle(fontSize: 25)),
      ),
      body:ListView.builder(itemCount: 9,itemBuilder: (context,index){
        return ListTile(
          title: Text('${brands[index]}',style: TextStyle(fontSize: 17)),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
        );
      }),
    );
  }
}
