import 'package:flutter/material.dart';

import '../model/call_model.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, i) => new Column(
        children: [
          new Divider(
            height: 0.1,
          ),
          new ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(callData[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  callData[i].name,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                new Icon(i % 2 == 0 ? Icons.call : Icons.videocam,
                    color: Colors.blueAccent)
              ],
            ),
            subtitle: Text(
              callData[i].time,
              style: TextStyle(color: Colors.grey, fontSize: 12.0),
            ),
          )
        ],
      ),
    );
  }
}
