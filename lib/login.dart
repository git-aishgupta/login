import 'package:flutter/material.dart';

import 'registration.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username;
  String password;

  final FocusNode _username = FocusNode();
  final FocusNode _password = FocusNode();

  TextStyle defaultStyle = TextStyle(fontSize: 16.0);
  TextStyle linkStyle = TextStyle(color: Color(0xff6C63FF), fontSize: 16.0);

  bool isChecked = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Please sign in to continue.',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Form(
                        key: _formKey,
                        autovalidate: _autoValidate,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              obscureText: false,
                              textInputAction: TextInputAction.next,
                              focusNode: _username,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      50.0,
                                    ),
                                  ),
                                ),
                                labelText: 'Username',
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            TextFormField(
                              obscureText: true,
                              textInputAction: TextInputAction.done,
                              focusNode: _password,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                ),
                                suffixText: 'FORGOT',
                                suffixStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      50.0,
                                    ),
                                  ),
                                ),
                                labelText: 'Password',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            40.0,
                          ),
//                side: BorderSide(color: Color(0xff6C63FF)),
                        ),
                        color: Color(
                          0xff6C63FF,
                        ),
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Don\'t have an account?',
                      ),
                      FlatButton(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Registration(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
