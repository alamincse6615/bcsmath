import 'dart:convert';

import 'package:bcsmath/details.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatefulWidget {
  const SubCategory({Key? key}) : super(key: key);

  @override

  _SubCategoryState createState() => _SubCategoryState();

}

class _SubCategoryState extends State<SubCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text("গণিতের বেসিক, Important টেকনিক"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: InkWell(

                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Details()));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ListTile(
                      title: Text(
                        "Sub Category name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),

                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    )
                  ),
                ),
              ),
            );
          }
      ),

    );
  }

}
