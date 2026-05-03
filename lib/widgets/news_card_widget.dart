import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/news_model.dart';
import '../views/news_web_view.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({super.key, required this.newDetails});

  final NewsModel newDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return NewsDetailsView(url: newDetails.newsUrl);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: SizedBox(
                    width: double.infinity,
                    height: 200.h,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: CachedNetworkImage(
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        imageUrl: newDetails.imageUrl!,
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) =>
                            Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.error_sharp,size: 50,),
                            )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 2.0,
                    right: 10,
                    left: 10,
                    top: 10,
                  ),
                  child: Text(
                    newDetails.headLine,
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                    right: 8,
                    left: 8,
                    top: 5,
                  ),
                  child: Text(
                    newDetails.subHeadLine!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13.sp, color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
