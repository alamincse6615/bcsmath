import 'dart:convert';

import 'package:bcsmath/subcategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'details.dart';
import 'model/categorymodel.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  Future<List<CategoryModel>> jsonfunction() async{
    final jsonProduct = await rootBundle.loadString("assets/jsonfile/jsondata.json");
    final list = json.decode(jsonProduct) as List<dynamic>;
    return list.map((e) => CategoryModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(child: Text("Bcs Math")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_active))
        ],
      ),
      body: Padding(
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
                    color: Color(0xff49870a),
                  ),
                  alignment: Alignment.center,

                  height: 180,
                  width: 180,
                  child: Center(
                    child: Text("গণিতের বেসিক, Important টেকনিক",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SubCategory())
                );
              },
            ),

            Card(
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
                  child: Text("লাভ -ক্ষতি, শতকরা, সুদকষা",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            Container(
                height: 180,
                width: 180,
                color: Colors.green,
                child: Center(child: Text("সংখ্যা পদ্ধতি, পরিমাপ, অনুপাত"))),
            Container(
                height: 180,
                width: 180,
                color: Colors.indigoAccent,
                child: Center(child: Text("বর্গ সংক্রান্ত, গতিবেগ, ল.সা.গু"))),
            Container(
                height: 180,
                width: 180,
                color: Colors.pinkAccent,
                child: Center(child: Text("চৌবাচ্চা, কাজ ও শ্রমিক, পাস-ফেল"))),
            Container(
                height: 180,
                width: 180,
                color: Colors.indigoAccent,
                child: Center(
                    child: Text("বর্গক্ষেত্র ও আয়তক্ষেত্র, প্রাণী বিষয়ক"))),
            Container(
                height: 180,
                width: 180,
                color: Colors.purple,
                child: Center(child: Text("জ্যামিতি, নৌকা_স্রোত, পরিমিতি"))),
            Container(
                height: 180,
                width: 180,
                color: Colors.red,
                child: Center(
                    child: Text(
                        "ত্রিকোনোমিতি, ভগ্নাংশ, দশমিক ভগ্নাংশ, সরলীকরণ, বর্গমূল",

                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}
