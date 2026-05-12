class CategoryModel {
  final String imagePath;
  final String pageName;
  final String categories;
  final String? country;

  CategoryModel({
    required this.imagePath,
    required this.pageName,
    required this.categories,
     this.country,
  });
}
