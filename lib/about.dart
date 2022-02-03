import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}
class _AboutState extends State<About> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer of বি সি এস ম্যাথ"),
      ),
      body:ListView(

        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 170,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                            child: Text("About",textAlign:TextAlign.left,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                        Divider(height: 5,color: Colors.white,endIndent: MediaQuery.of(context).size.width * .72,),
                        SizedBox(height: 5,),
                        Text(
                          "“Without mathematics, there’s nothing you can do. Everything around you is mathematics. Everything around you is numbers.”",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/osma.png"
                              ),
                              radius: 50,
                            ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Md Osman ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Flutter Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){},
                                  icon: FaIcon(FontAwesomeIcons.facebook,),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){},
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){},
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){},
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
