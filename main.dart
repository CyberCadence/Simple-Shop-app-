// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int index=2;
    final items = [
      Icon(
        Icons.social_distance,
        size: 25,
      ),
      Icon(
        Icons.search,
        size: 25,
      ),
      Icon(
        Icons.headset_sharp,
        size: 25,
      ),
      Icon(
        Icons.home_max,
        size: 25,
      ),Icon(Icons.local_laundry_service_rounded,size: 25,),
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: 
            CurvedNavigationBar(index: index,
            color: Colors.grey.shade200,
              items: items,
              height: 50,
            ),
          
          appBar: AppBar(
            title: Center(
              child: Text(
                'Cart Shop',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
            actions: [
              Container(
                child: Image.asset(
                  'images/searchicon.png',
                  width: 35,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ],
            toolbarHeight: 28,
            leading: Center(
              child: Image.asset(
                'images/hamburgericon.png',
                width: 35,
              ),
            ),
            backgroundColor: Colors.grey.shade200,
            elevation: 0,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 45,
                    height: 5,
                  ),
                  Text(
                    'Shop ',
                    style: TextStyle(
                        color: Colors.brown, fontSize: 30, letterSpacing: 5),
                  ),
                  Text(
                    'Local',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 40,
                        letterSpacing: 4),
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  threeButton('home', ispressed: true),
                  threeButton('cart', ispressed: false),
                  threeButton('account', ispressed: false)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 1,
                          color: Colors.grey.shade800)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: SingleChildScrollView(physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          containerSwithes('shape', ispressed: true),
                          containerSwithes('trus', ispressed: false),
                          containerSwithes('sss', ispressed: false),
                          containerSwithes('hiii', ispressed: false),
                          containerSwithes('looo', ispressed: false)
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            SizedBox(width: 17.5),
                            pictureContainer('2', 'nature', '20'),
                            pictureContainer('3', 'loop', '12'),
                            pictureContainer('4', 'karl', '15'),
                            pictureContainer('5', 'hooper', '21')
                          ],
                        ),
                      ),
                      Scrollbar(),
                      SizedBox(
                        height: 5,
                        width: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            'Holiday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 3,
                                color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            'view all',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Flexible(flex: 3,
                            child: Row(children: [
                              bottompicturewidget(),
                              bottompicturewidget(),
                              bottompicturewidget()
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ));
  }

  Container bottompicturewidget() {
    return Container(
      width: 200,
      height: 150,
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                  height: 120, child: Image.asset('images/photo3.jpg'))),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Sunset',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
              ),
              Text(
                'viewsite',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Text(
                '\$ 20',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding pictureContainer(String img, String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'images/photo$img.jpg',
              fit: BoxFit.cover,
              width: 150,
              height: 180,
            ),
          )),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          Text(
            '\$ $price',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }

  Column containerSwithes(String text, {bool ispressed = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(color: ispressed ? Colors.grey : Colors.lime),
        ),
        if (ispressed == true)
          Container(
            width: 8,
            height: 8,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          )
      ],
    );
  }

  ElevatedButton threeButton(String text, {bool ispressed = false}) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          primary: ispressed ? Colors.lime : Colors.grey),
    );
  }
}

class Scrollbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 5,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      alignment: Alignment.centerLeft,
      child: Container(
        height: 5,
        width: 100,
        color: Colors.black,
      ),
    );
  }
}
