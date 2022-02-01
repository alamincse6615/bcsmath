import 'package:bcsmath/model/subcategorymodel.dart';
import 'package:bcsmath/subcategory.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  SubCategoryModel subCategoryModel;
  Details(this.subCategoryModel);

  // String subCategoryName;
  // String subCategoryDetails;

  // Details(this.subCategoryName, this.subCategoryDetails);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subCategoryModel.subCategoryName.toString(),),

      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                widget.subCategoryModel.subCategoryDetails.toString(),
              style: TextStyle(
                fontSize: 16
              ),

            ),
          )
        ],
      ),
    );
  }
}
