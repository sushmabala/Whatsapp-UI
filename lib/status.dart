import 'package:flutter/material.dart';
import 'package:watsapp/ststus_model.dart';
class status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network("https://randomuser.me/api/portraits/men/9.jpg"),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            color: Colors.green,borderRadius: BorderRadius.circular(25.0)


,                        ),
                          child: Icon(Icons.add,color: Colors.white,size: 15.0,),
                        ),
                      )
                    ],
                  ),
                ),
                title: Text("My Status",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("tap to add status",style: TextStyle(fontSize: 15.0),),
              ),
            )
          ],
        ),
        SizedBox(

          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            height: 33.0,
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text("Recent Updates",style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.bold,fontSize: 12.0),),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount:  statusmodel.length,
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
                          backgroundImage: NetworkImage(statusmodel[i].photo),
                          backgroundColor: Colors.grey,
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(statusmodel[i].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0),),
                            //Icon(i%2==0?Icons.call:Icons.video_call,color: Colors.green,)
                          ],
                        ),
                        subtitle: Text(statusmodel[i].Time,style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                      )
                    ],
                  //);

        ),
                    ),
        ),
    ],

    );
  }
}