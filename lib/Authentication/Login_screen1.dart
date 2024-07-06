import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamza_garage_app/Authentication/Registration_Screen.dart/Signin_Screen.dart';
import 'package:hamza_garage_app/Authentication/Screen2.dart';

class Login_Screen_1 extends StatelessWidget {
  const Login_Screen_1({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Images/whitebackground.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
              child: Column(children: [
            SizedBox(
              height: _mediaQuery.size.height * .04,
            ),
            Container(
              height: _mediaQuery.size.height * .13,
              width: _mediaQuery.size.width * .28,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Images/Garage Logo.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              'Hamza\'s Garage',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: _mediaQuery.size.height * .10,
            ),
            Text(
              'Face ID',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.person_2_outlined,
              size: 100,
            ),
            Text(
              'Or',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: _mediaQuery.size.height * .04,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => Login_Screen_2())));
              },
              child: Text(
                'Login with Password',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont\'n have an account ?',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Signin_Screen())));
                    },
                    child: Text(
                      'Register here',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff6982ed),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ]))),
    );
  }
}
