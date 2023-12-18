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

import 'package:flutter_js/flutter_js.dart';

class JitsiWidgetWeb extends StatefulWidget {
  const JitsiWidgetWeb({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _JitsiWidgetWebState createState() => _JitsiWidgetWebState();
}

class _JitsiWidgetWebState extends State<JitsiWidgetWeb> {
  final meetingNameController = TextEditingController();

  final jitsiMeet = JitsiMeet();
  void join() {
    JavascriptRuntime flutterJs = getJavascriptRuntime();
    JsEvalResult jsResult = flutterJs
        .evaluate("customAlert('Flutter is calling upon JavaScript');");
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
