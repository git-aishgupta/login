import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Create Account',
            ),
            RaisedButton(
              child: Text(
                'SIGN  UP',
              ),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already have an account?',
                ),
                FlatButton(
                  child: Text(
                    'Sign in',
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
