import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/category_model.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({super.key, required this.categoryModel});

  final CategoryModel categoryModel;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return categoryModel.page;
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          alignment: AlignmentGeometry.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.circular(20),
            image: DecorationImage(
              image: AssetImage(categoryModel.imagePath),
              fit: BoxFit.fill,
            ),
          ),
          height: 180.h,
          width: 200.w,
          child: Text(
            categoryModel.categoryName,
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
    );
  }
}
