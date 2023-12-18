// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets

import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

class JitsiWidget extends StatefulWidget {
  const JitsiWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _JitsiWidgetState createState() => _JitsiWidgetState();
}

class _JitsiWidgetState extends State<JitsiWidget> {
  final meetingNameController = TextEditingController();

  final jitsiMeet = JitsiMeet();
  void join() {
    var options = JitsiMeetConferenceOptions(
      serverURL: "https://likerocket.club",
      room: meetingNameController.text,
      token:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJtb2RlcmF0b3IiOmZhbHNlLCJhdWQiOiJqaXRzaSIsInJvb20iOiIqIiwiaXNzIjoiTWVkaW5ldCIsInN1YiI6Imxpa2Vyb2NrZXQuY2x1YiIsImV4cCI6MTc1MzQ5ODgxNSwibmJmIjowfQ.duC-u06aK33h4_iyULqjQoesHReJx2OCrDOS9km75zY",
      userInfo: JitsiMeetUserInfo(
          displayName: "Flutter user", email: "user@example.com"),
    );
    jitsiMeet.join(options);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 255),
        title: Text("Hello jitsi"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250,
              height: 50,
              child: TextField(
                controller: meetingNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter meeting name',
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: FilledButton(
                  onPressed: join,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                  ),
                  child: const Text("Join")),
            ),
          ],
        ),
      ),
    );
  }
}
