import 'package:flutter/material.dart';
import 'package:whatsappui/tabs/call.dart';
import 'package:whatsappui/tabs/camera.dart';
import 'package:whatsappui/tabs/chats.dart';
import 'package:whatsappui/tabs/status.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryColor: new Color(0xff075e54),
          accentColor: new Color(0xff64b5f6)),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
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
        title: Text('ChatApp'),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              )),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALL',
            ),
          ],
        ),
      ),
      body: new TabBarView(controller: _tabController, children: <Widget>[
        new Camera(),
        new Chats(),
        new Status(),
        new Call(),
      ]),
      floatingActionButton: _tabController.index == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.camera, color: Colors.white),
            )
          : _tabController.index == 1
              ? FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.message, color: Colors.white))
              : _tabController.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child: Icon(Icons.edit, color: Colors.blueAccent),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.camera_alt, color: Colors.white),
                        )
                      ],
                    )
                  : FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add_call, color: Colors.white),
                    ),
    );
  }
}
