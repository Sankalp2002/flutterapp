import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
            appBar: AppBar(
              backgroundColor: Colors.teal.shade900,
              title: Text('Tourism'),
            ),
            body: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/icon.png'),

                    ),
                    Card(
                      margin:EdgeInsets.fromLTRB(5, 20, 5, 0),
                      child: TextField(

                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'User Name',
                        ),
                      ),
                    ),
                    Card(

                      child: TextField(
                        obscureText: true,

                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      textColor: Colors.black,
                      child: Text('Forgot Password'),
                    ),
                    Container(

                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.teal.shade900,
                          child: Text('Login'),
                          onPressed: () {

                          },
                        )),
                    Container(
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
                ))));
  }
}
