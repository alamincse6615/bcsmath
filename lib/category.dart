import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.cyanAccent,
              child: Center(
                child: Text("গণিতের বেসিক, Important টেকনিক"),
              ),
            ),
            Container(
                height: 200,
                width: 200,
                color: Colors.deepPurpleAccent,
                child: Center(child: Text("লাভ -ক্ষতি, শতকরা, সুদকষা"))),
            Container(
                height: 200,
                width: 200,
                color: Colors.green,
                child: Center(child: Text("সংখ্যা পদ্ধতি, পরিমাপ, অনুপাত"))),
            Container(
                height: 200,
                width: 200,
                color: Colors.indigoAccent,
                child: Center(child: Text("বর্গ সংক্রান্ত, গতিবেগ, ল.সা.গু"))),
            Container(
                height: 200,
                width: 200,
                color: Colors.pinkAccent,
                child: Center(child: Text("চৌবাচ্চা, কাজ ও শ্রমিক, পাস-ফেল"))),
            Container(
                height: 200,
                width: 200,
                color: Colors.indigoAccent,
                child: Center(
                    child: Text("বর্গক্ষেত্র ও আয়তক্ষেত্র, প্রাণী বিষয়ক"))),
            Container(
                height: 200,
                width: 200,
                color: Colors.purple,
                child: Center(child: Text("জ্যামিতি, নৌকা_স্রোত, পরিমিতি"))),
            Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Center(
                    child: Text(
                        "ত্রিকোনোমিতি, ভগ্নাংশ, দশমিক ভগ্নাংশ, সরলীকরণ, বর্গমূল")
                )
            ),
          ],
        ),
      ),
    );
  }
}
