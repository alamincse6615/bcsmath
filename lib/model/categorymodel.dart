import 'package:bcsmath/model/subcategorymodel.dart';

class CategoryModel{
  String? categoryName;
  List<SubCategoryModel>? subcategorylist;

  CategoryModel(this.categoryName, this.subcategorylist);

  CategoryModel.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName']??"";
    if (json['subcategorylist'] != null) {
      subcategorylist = <SubCategoryModel>[];
      json['subcategorylist'].forEach((v) {
        subcategorylist!.add(new SubCategoryModel.fromJson(v));
      });
    }
  }
}