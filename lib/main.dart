import 'package:flutter/material.dart';
import 'package:watsapp/calls.dart';
import 'package:watsapp/camera.dart';
import 'package:watsapp/chat.dart';
import 'package:watsapp/status.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primaryColor: Color(0xff075e54),
      accentColor: Color(0xff25d366),
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WhatssApp"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
                icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ))
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALL"),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            new camera(),
            new chat(),
            new status(),
            new calls(),
          ],
        ),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
                child: Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
              )
            : _tabController.index == 1
                ? FloatingActionButton(
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  )
                : _tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            height: 45.45,
                            width: 45.45,
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.edit,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.5,
                          ),
                          FloatingActionButton(
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    : FloatingActionButton(
                        child: Icon(
                          Icons.add_call,
                          color: Colors.white,
                        ),
                      ));
  }
}
