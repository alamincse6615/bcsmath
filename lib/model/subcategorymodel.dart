class SubCategoryModel{
  String? subCategoryName;
  String? subCategoryDetails;

  SubCategoryModel(this.subCategoryName, this.subCategoryDetails);
  SubCategoryModel.fromJson(Map<String, dynamic> json) {
    subCategoryName = json['subCategoryName'];
    subCategoryDetails = json['subCategoryDetails'];
  }
}