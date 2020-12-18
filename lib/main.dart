import 'package:flutter/material.dart';
import 'package:flutterapp/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  gotoMainActivity(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => mainScreen()),
    );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.teal,
              appBar: AppBar(
                backgroundColor: Colors.teal.shade800,
                title: Text('Tourism'),
              ),
              body: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    children: <Widget>[
                       FractionallySizedBox(
                         widthFactor: 0.4,
                         child: Container(
                           margin: EdgeInsets.symmetric(vertical: 30),
                          child: Image.asset('images/icon.png',
                              fit: BoxFit.scaleDown),
                      ),
                       ),
                      FractionallySizedBox(
                        widthFactor: 0.9,
                        child: Card(
                          //margin:EdgeInsets.fromLTRB(5, 20, 5, 0),
                          child: TextField(

                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'User Name',
                            ),
                          ),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.9,
                        child: Card(

                          child: TextField(
                            obscureText: true,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                          ),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.4,
                        child: FlatButton(
                          onPressed: () {
                            //forgot password screen
                          },
                          textColor: Colors.black,
                          child: Text('Forgot Password'),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.9,

                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.teal.shade900,
                            child: Text('Login'),
                            onPressed: () {
                              gotoMainActivity(context);
                            },
                          )),
                      FractionallySizedBox(
                        widthFactor: 0.6,
                          child: Row(
                        children: <Widget>[
                          Text('Do not have account?'),
                          FlatButton(
                            textColor: Colors.green.shade900,
                            child: Text(
                              'Sign up',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              //signup screen
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ))
                    ],
                  ))),
        
        )
    );
  }
}


