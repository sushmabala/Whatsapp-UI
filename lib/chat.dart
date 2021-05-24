import 'package:flutter/material.dart';
import 'package:watsapp/chat_model.dart';
class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatsdata.length,
        itemBuilder: (context,i)=>
          // ignore: missing_return
          Column(
            children: <Widget>[
              Divider(
                height: 0.1,
                thickness: 0.5,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(chatsdata[i].photo),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(chatsdata[i].name,style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),),
                    Text(chatsdata[i].time,style: TextStyle(fontSize: 11.0,color: Colors.grey),),

                  ],
                ),
                subtitle: Text(chatsdata[i].msg,style: TextStyle(fontSize: 11.0,color: Colors.grey),),
              ),

            ],

          )

    ) ;
  }
}