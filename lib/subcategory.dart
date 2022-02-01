import 'dart:convert';

import 'package:bcsmath/details.dart';
import 'package:bcsmath/model/subcategorymodel.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatefulWidget {
  String categoryName;
  List<SubCategoryModel> subcategorylist;
  SubCategory(this.categoryName,this.subcategorylist);

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
          itemCount: widget.subcategorylist.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: InkWell(

                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Details(
                          widget.subcategorylist[index]
                      )));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ListTile(
                      title: Text(
                        widget.subcategorylist[index].subCategoryName.toString(),
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
