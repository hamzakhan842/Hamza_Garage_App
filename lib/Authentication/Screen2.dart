import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamza_garage_app/Authentication/Registration_Screen.dart/Signin_Screen.dart';
import 'package:hamza_garage_app/Bottom_Navigation_Bar/View.dart';
import 'package:hamza_garage_app/Forgot_Password/Ui.dart';

class Login_Screen_2 extends StatelessWidget {
  const Login_Screen_2({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                child: Column(
              children: [
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
                TextFormField(
                  // controller: controller,
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      constraints: BoxConstraints(maxWidth: 282, maxHeight: 50),
                      filled: false,
                      enabledBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      prefixIcon: Icon(
                        Icons.person_3_outlined,
                        color: Colors.black,
                      ),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * .04,
                ),
                TextFormField(
                  // controller: controller,
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      constraints: BoxConstraints(maxWidth: 282, maxHeight: 50),
                      filled: false,
                      enabledBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      prefixIcon: Icon(
                        Icons.https_outlined,
                        color: Colors.black,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * .04,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomBar(),
                        ));
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(285, 46),
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xff6982ed),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * .01,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Forgot_Password())));
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'or',
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Forgot_Password())));
                  },
                  child: Text(
                    'Login with Face ID',
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
              ],
            ))));
  }
}
