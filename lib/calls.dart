import 'package:flutter/material.dart';
import 'package:watsapp/call_mode.dart';
class calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: callData.length,
        itemBuilder:(context,i)=>
    Column(
      children: <Widget>[
        Divider(
          height: 0.1,
          thickness: 0.5,

        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage(callData[i].photo),
            backgroundColor: Colors.grey,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(callData[i].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0),),
              Icon(i%2==0?Icons.call:Icons.video_call,color: Colors.green,)
            ],
          ),
          subtitle: Text(callData[i].time,style: TextStyle(fontSize: 12.0,color: Colors.grey),),
        )
      ],
    ));
  }
}
