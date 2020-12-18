import 'package:flutter/material.dart';

class mainScreen extends StatelessWidget {

  goBackToPreviousScreen(BuildContext context){

    Navigator.pop(context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Activity Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {goBackToPreviousScreen(context);},
          color: Colors.lightBlue,
          textColor: Colors.white,
          child: Text('Go Back To Previous Screen'),
        ),
      ),
    );
  }
}