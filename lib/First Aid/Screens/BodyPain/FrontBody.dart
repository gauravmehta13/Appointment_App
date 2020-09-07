import 'package:flutter/material.dart';

import '../../Data/data.dart';
import 'PainDetails.dart';

class FrontBody extends StatelessWidget {
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
                    border:
                        Border.all(color: Colors.deepOrangeAccent, width: 0.1),
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
                  ),
                ),
              ])),
          Container(
            width: MediaQuery.of(context).size.width / 2 / 3,
            child: Column(
              children: <Widget>[
                Container(
                  height: 20,
                ),
//face
                Container(
                    height: 85,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: face[0]['title'],
                                  subtitle: face[0]['subtitle'],
                                  imgurl: face[0]['imgurl'],
                                  h1: face[0]['h1'],
                                  h2: face[0]['h2'],
                                  h3: face[0]['h3'],
                                  h4: face[0]['h4'],
                                  h5: face[0]['h5'],
                                  sh1: face[0]['sh1'],
                                  sh2: face[0]['sh2'],
                                  sh3: face[0]['sh3'],
                                  sh4: face[0]['sh4'],
                                  sh5: face[0]['sh5'],
                                )));
                      },
                    )),
//chest
                Container(
                    height: 65,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: chest[0]['title'],
                                  subtitle: chest[0]['subtitle'],
                                  imgurl: chest[0]['imgurl'],
                                  h1: chest[0]['h1'],
                                  h2: chest[0]['h2'],
                                  h3: chest[0]['h3'],
                                  h4: chest[0]['h4'],
                                  h5: chest[0]['h5'],
                                  sh1: chest[0]['sh1'],
                                  sh2: chest[0]['sh2'],
                                  sh3: chest[0]['sh3'],
                                  sh4: chest[0]['sh4'],
                                  sh5: chest[0]['sh5'],
                                )));
                      },
                    )),
//abdomen
                Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: abdomen[0]['title'],
                                  subtitle: abdomen[0]['subtitle'],
                                  imgurl: abdomen[0]['imgurl'],
                                  h1: abdomen[0]['h1'],
                                  h2: abdomen[0]['h2'],
                                  h3: abdomen[0]['h3'],
                                  h4: abdomen[0]['h4'],
                                  h5: abdomen[0]['h5'],
                                  sh1: abdomen[0]['sh1'],
                                  sh2: abdomen[0]['sh2'],
                                  sh3: abdomen[0]['sh3'],
                                  sh4: abdomen[0]['sh4'],
                                  sh5: abdomen[0]['sh5'],
                                )));
                      },
                    )),
//pelvis
                Container(
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent, width: 0.1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PainDetails(
                                  title: pelvis[0]['title'],
                                  subtitle: pelvis[0]['subtitle'],
                                  imgurl: pelvis[0]['imgurl'],
                                  h1: pelvis[0]['h1'],
                                  h2: pelvis[0]['h2'],
                                  h3: pelvis[0]['h3'],
                                  h4: pelvis[0]['h4'],
                                  h5: pelvis[0]['h5'],
                                  sh1: pelvis[0]['sh1'],
                                  sh2: pelvis[0]['sh2'],
                                  sh3: pelvis[0]['sh3'],
                                  sh4: pelvis[0]['sh4'],
                                  sh5: pelvis[0]['sh5'],
                                )));
                      },
                    )),
//legs
                Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent, width: 0.1),
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
              width: MediaQuery.of(context).size.width / 2 / 3 - 2,
              child: Column(children: <Widget>[
                Container(
                  height: 105,
                ),
//hands
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.redAccent, width: 0.1),
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
                  ),
                ),
              ])),
        ],
      ),
    );
  }
}
