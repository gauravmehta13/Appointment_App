import 'package:flutter/material.dart';

import '../Data/data.dart';
import 'BodyPain/PainDetails.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: (60 / 70),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PainDetails(
                          title: burns[0]['title'],
                          subtitle: burns[0]['subtitle'],
                          imgurl: burns[0]['imgurl'],
                          h1: burns[0]['h1'],
                          h2: burns[0]['h2'],
                          h3: burns[0]['h3'],
                          h4: burns[0]['h4'],
                          h5: burns[0]['h5'],
                          sh1: burns[0]['sh1'],
                          sh2: burns[0]['sh2'],
                          sh3: burns[0]['sh3'],
                          sh4: burns[0]['sh4'],
                          sh5: burns[0]['sh5'],
                        )));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/firstaid/burn.jpg"),
                            fit: BoxFit.fill),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: 100,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        'Burns',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PainDetails(
                          title: cuts[0]['title'],
                          subtitle: cuts[0]['subtitle'],
                          imgurl: cuts[0]['imgurl'],
                          h1: cuts[0]['h1'],
                          h2: cuts[0]['h2'],
                          h3: cuts[0]['h3'],
                          h4: cuts[0]['h4'],
                          h5: cuts[0]['h5'],
                          sh1: cuts[0]['sh1'],
                          sh2: cuts[0]['sh2'],
                          sh3: cuts[0]['sh3'],
                          sh4: cuts[0]['sh4'],
                          sh5: cuts[0]['sh5'],
                        )));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/firstaid/cut.jpg"),
                            fit: BoxFit.fill),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: 100,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        'Cuts',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PainDetails(
                          title: abrasions[0]['title'],
                          subtitle: abrasions[0]['subtitle'],
                          imgurl: abrasions[0]['imgurl'],
                          h1: abrasions[0]['h1'],
                          h2: abrasions[0]['h2'],
                          h3: abrasions[0]['h3'],
                          h4: abrasions[0]['h4'],
                          h5: abrasions[0]['h5'],
                          sh1: abrasions[0]['sh1'],
                          sh2: abrasions[0]['sh2'],
                          sh3: abrasions[0]['sh3'],
                          sh4: abrasions[0]['sh4'],
                          sh5: abrasions[0]['sh5'],
                        )));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/firstaid/abrasion.jpg"),
                            fit: BoxFit.fill),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: 100,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        'Abrasions',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PainDetails(
                          title: stings[0]['title'],
                          subtitle: stings[0]['subtitle'],
                          imgurl: stings[0]['imgurl'],
                          h1: stings[0]['h1'],
                          h2: stings[0]['h2'],
                          h3: stings[0]['h3'],
                          h4: stings[0]['h4'],
                          h5: stings[0]['h5'],
                          sh1: stings[0]['sh1'],
                          sh2: stings[0]['sh2'],
                          sh3: stings[0]['sh3'],
                          sh4: stings[0]['sh4'],
                          sh5: stings[0]['sh5'],
                        )));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/firstaid/bite.jpg"),
                            fit: BoxFit.fill),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: 100,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        'Stings',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PainDetails(
                          title: splinters[0]['title'],
                          subtitle: splinters[0]['subtitle'],
                          imgurl: splinters[0]['imgurl'],
                          h1: splinters[0]['h1'],
                          h2: splinters[0]['h2'],
                          h3: splinters[0]['h3'],
                          h4: splinters[0]['h4'],
                          h5: splinters[0]['h5'],
                          sh1: splinters[0]['sh1'],
                          sh2: splinters[0]['sh2'],
                          sh3: splinters[0]['sh3'],
                          sh4: splinters[0]['sh4'],
                          sh5: splinters[0]['sh5'],
                        )));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/firstaid/splinters.jpg"),
                            fit: BoxFit.fill),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: 100,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        'Splinters',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PainDetails(
                          title: sprain[0]['title'],
                          subtitle: sprain[0]['subtitle'],
                          imgurl: sprain[0]['imgurl'],
                          h1: sprain[0]['h1'],
                          h2: sprain[0]['h2'],
                          h3: sprain[0]['h3'],
                          h4: sprain[0]['h4'],
                          h5: sprain[0]['h5'],
                          sh1: sprain[0]['sh1'],
                          sh2: sprain[0]['sh2'],
                          sh3: sprain[0]['sh3'],
                          sh4: sprain[0]['sh4'],
                          sh5: sprain[0]['sh5'],
                        )));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/firstaid/sprain.jpg"),
                            fit: BoxFit.fill),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: 100,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        'Sprain',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PainDetails(
                          title: strain[0]['title'],
                          subtitle: strain[0]['subtitle'],
                          imgurl: strain[0]['imgurl'],
                          h1: strain[0]['h1'],
                          h2: strain[0]['h2'],
                          h3: strain[0]['h3'],
                          h4: strain[0]['h4'],
                          h5: strain[0]['h5'],
                          sh1: strain[0]['sh1'],
                          sh2: strain[0]['sh2'],
                          sh3: strain[0]['sh3'],
                          sh4: strain[0]['sh4'],
                          sh5: strain[0]['sh5'],
                        )));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/firstaid/strain.jpg"),
                            fit: BoxFit.fill),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: 100,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        'Strain',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]);
  }
}
