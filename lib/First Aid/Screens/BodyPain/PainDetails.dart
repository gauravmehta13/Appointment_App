import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PainDetails extends StatelessWidget {
  String title;
  String subtitle;
  String imgurl;
  String h1;
  String h2;
  String h3;
  String h4;
  String h5;
  String sh1;
  String sh2;
  String sh3;
  String sh4;
  String sh5;

  PainDetails(
      {this.title,
      this.subtitle,
      this.imgurl,
      this.h1,
      this.h2,
      this.h3,
      this.h4,
      this.h5,
      this.sh1,
      this.sh2,
      this.sh3,
      this.sh4,
      this.sh5});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain, image: AssetImage(imgurl)),
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 200,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(subtitle,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                h1,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(sh1,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                h2,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(sh2,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                h3,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(sh3,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                h4,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(sh4,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                h5,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(sh5,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
