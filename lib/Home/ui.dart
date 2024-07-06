import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
        // appBar: AppBar(
        //   // title: RichText(
        //   //     text: TextSpan(
        //   //         text: 'Welcome,',
        //   //         style: TextStyle(color: Colors.black, fontSize: 18),
        //   //         children: [
        //   //       TextSpan(
        //   //           text: 'Hamza\'s Garage',
        //   //           style: TextStyle(color: Colors.blue, fontSize: 18))
        //   //     ])),
        //   // title: Text(
        //   //   'Welcome, Hamza\'s Garage ',
        //   //   style: TextStyle(fontSize: 18),
        //   // ),
        //   backgroundColor: Colors.white,
        // ),
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
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/Images/brand.jpg'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Welcome,',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                                children: [
                              TextSpan(
                                  text: 'Hamza\'s Garage',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18))
                            ])),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.roofing_outlined),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          box1(mediaQuery: _mediaQuery,text1: 'jj',text: 'gg',),
                          box1(mediaQuery: _mediaQuery,text1: 'jj',text: 'gg',),
                          box1(mediaQuery: _mediaQuery,text1: 'jj',text: 'gg',),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}

class box1 extends StatelessWidget {
  const box1({
    super.key,
    required MediaQueryData mediaQuery, required this.text, required this.text1, 
  }) : _mediaQuery = mediaQuery;

  final MediaQueryData _mediaQuery;
  final String text;final String text1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: _mediaQuery.size.height * .12,
        width: _mediaQuery.size.width * .42,
        color:Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.circle, color: Color(0xff9bf9d3)),
                    SizedBox(
                      width: _mediaQuery.size.width * .03,
                    ),
                    Text(
                      text1,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
