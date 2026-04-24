import 'package:flutter/material.dart';
import '../Models/Category_Model.dart';

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
          height: MediaQuery.heightOf(context) * .15,
          width: MediaQuery.widthOf(context) * .65,
          child: Text(
            categoryModel.categoryName,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.5),
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
