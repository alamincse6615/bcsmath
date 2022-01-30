import 'package:bcsmath/model/subcategorymodel.dart';

class CategoryModel{
  String? categoryName;
  String? categoryImage;
  List<SubCategoryModel>? subcategorylist;
  CategoryModel(this.categoryName,this.categoryImage, this.subcategorylist);

  CategoryModel.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
    if (json['subcategorylist'] != null) {
      subcategorylist = <SubCategoryModel>[];
      json['subcategorylist'].forEach((v) {
        subcategorylist!.add(new SubCategoryModel.fromJson(v));
      });
    }
  }
}