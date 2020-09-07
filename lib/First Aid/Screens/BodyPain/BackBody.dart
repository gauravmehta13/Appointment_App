import 'package:flutter/material.dart';

import '../../Data/data.dart';
import 'PainDetails.dart';

class BackBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      width: MediaQuery.of(context).size.width / 2,
      height: 500,
      child: Row(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width / 2 / 3,
              child: Column(children: <Widget>[
                Container(
                  height: 105,
                ),
//hands
                Container(
                    height: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.deepOrangeAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: hands[0]['title'],
                                  subtitle: hands[0]['subtitle'],
                                  imgurl: hands[0]['imgurl'],
                                  h1: hands[0]['h1'],
                                  h2: hands[0]['h2'],
                                  h3: hands[0]['h3'],
                                  h4: hands[0]['h4'],
                                  h5: hands[0]['h5'],
                                  sh1: hands[0]['sh1'],
                                  sh2: hands[0]['sh2'],
                                  sh3: hands[0]['sh3'],
                                  sh4: hands[0]['sh4'],
                                  sh5: hands[0]['sh5'],
                                )));
                      },
                    )),
              ])),
          Container(
            width: MediaQuery.of(context).size.width / 2 / 3 - 2,
            child: Column(
              children: <Widget>[
                Container(
                  height: 20,
                ),
//head
                Container(
                    height: 85,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.deepOrangeAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: head[0]['title'],
                                  subtitle: head[0]['subtitle'],
                                  imgurl: head[0]['imgurl'],
                                  h1: head[0]['h1'],
                                  h2: head[0]['h2'],
                                  h3: head[0]['h3'],
                                  h4: head[0]['h4'],
                                  h5: head[0]['h5'],
                                  sh1: head[0]['sh1'],
                                  sh2: head[0]['sh2'],
                                  sh3: head[0]['sh3'],
                                  sh4: head[0]['sh4'],
                                  sh5: head[0]['sh5'],
                                )));
                      },
                    )),
//Scapula
                Container(
                    height: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.deepOrangeAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: scapula[0]['title'],
                                  subtitle: scapula[0]['subtitle'],
                                  imgurl: scapula[0]['imgurl'],
                                  h1: scapula[0]['h1'],
                                  h2: scapula[0]['h2'],
                                  h3: scapula[0]['h3'],
                                  h4: scapula[0]['h4'],
                                  h5: scapula[0]['h5'],
                                  sh1: scapula[0]['sh1'],
                                  sh2: scapula[0]['sh2'],
                                  sh3: scapula[0]['sh3'],
                                  sh4: scapula[0]['sh4'],
                                  sh5: scapula[0]['sh5'],
                                )));
                      },
                    )),
//back
                Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.deepOrangeAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: back[0]['title'],
                                  subtitle: back[0]['subtitle'],
                                  imgurl: back[0]['imgurl'],
                                  h1: back[0]['h1'],
                                  h2: back[0]['h2'],
                                  h3: back[0]['h3'],
                                  h4: back[0]['h4'],
                                  h5: back[0]['h5'],
                                  sh1: back[0]['sh1'],
                                  sh2: back[0]['sh2'],
                                  sh3: back[0]['sh3'],
                                  sh4: back[0]['sh4'],
                                  sh5: back[0]['sh5'],
                                )));
                      },
                    )),
//hip
                Container(
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.deepOrangeAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: hip[0]['title'],
                                  subtitle: hip[0]['subtitle'],
                                  imgurl: hip[0]['imgurl'],
                                  h1: hip[0]['h1'],
                                  h2: hip[0]['h2'],
                                  h3: hip[0]['h3'],
                                  h4: hip[0]['h4'],
                                  h5: hip[0]['h5'],
                                  sh1: hip[0]['sh1'],
                                  sh2: hip[0]['sh2'],
                                  sh3: hip[0]['sh3'],
                                  sh4: hip[0]['sh4'],
                                  sh5: hip[0]['sh5'],
                                )));
                      },
                    )),
//legs
                Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.deepOrangeAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: legs[0]['title'],
                                  subtitle: legs[0]['subtitle'],
                                  imgurl: legs[0]['imgurl'],
                                  h1: legs[0]['h1'],
                                  h2: legs[0]['h2'],
                                  h3: legs[0]['h3'],
                                  h4: legs[0]['h4'],
                                  h5: legs[0]['h5'],
                                  sh1: legs[0]['sh1'],
                                  sh2: legs[0]['sh2'],
                                  sh3: legs[0]['sh3'],
                                  sh4: legs[0]['sh4'],
                                  sh5: legs[0]['sh5'],
                                )));
                      },
                    )),
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width / 2 / 3,
              child: Column(children: <Widget>[
                Container(
                  height: 105,
                ),
//hands
                Container(
                    height: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.deepOrangeAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: hands[0]['title'],
                                  subtitle: hands[0]['subtitle'],
                                  imgurl: hands[0]['imgurl'],
                                  h1: hands[0]['h1'],
                                  h2: hands[0]['h2'],
                                  h3: hands[0]['h3'],
                                  h4: hands[0]['h4'],
                                  h5: hands[0]['h5'],
                                  sh1: hands[0]['sh1'],
                                  sh2: hands[0]['sh2'],
                                  sh3: hands[0]['sh3'],
                                  sh4: hands[0]['sh4'],
                                  sh5: hands[0]['sh5'],
                                )));
                      },
                    )),
              ])),
        ],
      ),
    );
  }
}
