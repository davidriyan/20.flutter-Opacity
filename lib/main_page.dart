import 'dart:ui';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Custom Card Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.white, Colors.red],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                  elevation: 10,
                  child: Stack(children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: AssetImage('assets/images/images1.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/image2.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0,
                          45 + MediaQuery.of(context).size.height * 0.35, 0, 0),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'Beautifull public figure in South Korea',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'posted on',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    'June 8, 2022',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Spacer(
                                    flex: 10,
                                  ),
                                  Icon(Icons.thumb_up,
                                      color: Colors.grey, size: 23),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text('998'),
                                  Spacer(
                                    flex: 5,
                                  ),
                                  Icon(
                                    Icons.comment,
                                    color: Colors.grey,
                                    size: 23,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text('1277'),
                                  Spacer(
                                    flex: 10,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ])),
            ),
          )
        ],
      ),
    );
  }
}
