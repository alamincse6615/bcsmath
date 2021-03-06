import 'dart:convert';
import 'dart:io';
import 'package:bcsmath/about.dart';
import 'package:bcsmath/privacy%20policy.dart';
import 'package:bcsmath/subcategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_share/flutter_share.dart';
import 'details.dart';
import 'model/categorymodel.dart';
import 'package:url_launcher/url_launcher.dart';


class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Future<List<CategoryModel>> jsonfunction() async {
    final jsonProduct =
        await rootBundle.loadString("assets/jsonfile/jsondata.json");
    final list = json.decode(jsonProduct) as List<dynamic>;
    return list.map((e) => CategoryModel.fromJson(e)).toList();
  }
  Future<void> share() async {
    await FlutterShare.share(
        title: 'বিসিএস ম্যাথ সলুসন',
        linkUrl: 'https://play.google.com/store/apps/details?id=com.nintyone.bcsmath',

    );
  }
  Future<void> _launchInWebViewOrVC(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("বি সি এস ম্যাথ")),
          actions: [
            IconButton(onPressed: () {
              share();
            },
             icon: Icon(Icons.share)),
            IconButton(onPressed: () {
              _launchInWebViewOrVC("https://play.google.com/store/apps/details?id=com.nintyone.bcsmath");
            },
             icon: Center(
               child: Icon(Icons.star_rate_sharp,
               size: 30,
               ),
             ))
          ],
        ),
        drawer: Drawer(
            child: ListView(
              children: [

                Card(
                  child: Container(
                    height: 230,
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/logobcsmath.jpg"
                          ),
                          radius: 60,
                        ),
                        SizedBox(height: 5,),
                        Text("বিসিএস ম্যাথ ",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        )
                      ],
                    ),
                  ),
                ),

                ListTile(
                  title: Text("About us"),
                  leading: Icon(Icons.account_box_outlined),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>About ()));
                    }
                ),
                ListTile(
                  title: Text("Privacy policy"),
                  leading: Icon(Icons.privacy_tip_sharp),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>Privacy ()));
                  },
                ),
                ListTile(
                  title: Text("Share"),
                  leading: Icon(Icons.share_outlined),
                  onTap: (){
                    share();
                  },
                ),
                ListTile(
                  title: Text("Exit"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text('Exit From Bcs Math'),
                            content: Text("Are you sure want to exit ?"),
                            actions: [
                              FlatButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text("No"),
                              ),
                              FlatButton(
                                onPressed: (){
                                  exit(0);
                                },
                                child: Text("Okay"),
                              ),
                            ],
                          );
                        }
                    );
                  },
                )
              ],
            )),
        /* body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xe649870a),
                  ),
                  alignment: Alignment.center,
                  height: 180,
                  width: 180,
                  child: Center(
                    child: Text(
                      "গণিতের বেসিক, Important টেকনিক",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SubCategory()));
              },
            ),
            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff49870a),
                  ),
                  alignment: Alignment.center,
                  height: 180,
                  width: 180,
                  child: Center(
                    child: Text(
                      "লাভ -ক্ষতি, শতকরা, সুদকষা",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                        (context) => SubCategory ()));
              },
            ),

            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff49870a),
                  ),
                  alignment: Alignment.center,
                  height: 180,
                  width: 180,
                  child: Center(
                    child: Text(
                      "সংখ্যা পদ্ধতি, পরিমাপ, অনুপাত",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) => SubCategory ()));
              },
            ),
            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff49870a),
                  ),
                  alignment: Alignment.center,
                  height: 180,
                  width: 180,
                  child: Center(
                    child: Text(
                      "বর্গ সংক্রান্ত, গতিবেগ, ল.সা.গু",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                        (context) => SubCategory ()));
              },
            ),

            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff49870a),
                  ),
                  alignment: Alignment.center,
                  height: 180,
                  width: 180,
                  child: Center(
                    child: Text(
                      "চৌবাচ্চা, কাজ ও শ্রমিক, পাস-ফেল",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                        (context) => SubCategory ()));
              },
            ),

            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff49870a),
                  ),
                  alignment: Alignment.center,
                  height: 180,
                  width: 180,
                  child: Center(
                    child: Text(
                      "বর্গক্ষেত্র ও আয়তক্ষেত্র, প্রাণী বিষয়ক",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                        (context) => SubCategory ()));
              },
            ),

            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff49870a),
                  ),
                  alignment: Alignment.center,
                  height: 180,
                  width: 180,
                  child: Center(
                    child: Text(
                      "জ্যামিতি, নৌকা_স্রোত, পরিমিতি",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                        (context) => SubCategory ()));
              },
            ),

            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff49870a),
                  ),
                  alignment: Alignment.center,
                  height: 180,
                  width: 180,
                  child: Center(
                    child: Text(
                      "ত্রিকোনোমিতি, ভগ্নাংশ, দশমিক ভগ্নাংশ, সরলীকরণ, বর্গমূল",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                        (context) => SubCategory ()));
              },
            ),

          ],
        ),
      ),*/
        body: FutureBuilder(
          future: jsonfunction(),
          builder: (context, info) {
            print(info);
            if(info.hasData){
              List<CategoryModel> _list = info.data as  List<CategoryModel>;
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: GridView.builder(
                    itemCount: _list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            _list[index].categoryName.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubCategory(
                                    _list[index].categoryName!,
                                    _list[index].subcategorylist!,
                                  )));
                        },
                      );
                    }),
              );
            }
            if(info.hasData != null){
              return Center(
                child: Container(
                  child: Text("Loading..."),
                ),
              );
            }
            else{
              return Center(
                child: Container(
                  child: Text("Loading..."),
                ),
              );
            }
            }

        ));
  }
}
