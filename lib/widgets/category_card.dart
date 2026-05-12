import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_cloud/views/news_category_view.dart';
import '../data/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return NewsCategoryView(model: categoryModel);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 6),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(25),
          ),
          elevation: 10,
          child: Container(
            alignment: AlignmentGeometry.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.circular(25),
              image: DecorationImage(
                image: AssetImage(categoryModel.imagePath),
                fit: BoxFit.fill,
              ),
            ),
            height: 180.h,
            width: 230.w,
            child: Text(
              categoryModel.pageName,
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black.withValues(alpha: 0.9),
                    offset: const Offset(2, 0),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
