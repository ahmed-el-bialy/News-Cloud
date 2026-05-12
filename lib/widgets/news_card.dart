import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/models/news_model.dart';
import '../views/news_web_view.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.newDetails});

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
                        imageUrl:
                            newDetails.imageUrl ??
                            "https://imgs.search.brave.com/w4VZNFveOGMTnKbTH0xiATTbiTlgO13s89OLsLPLHE4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzE5LzU2LzM4LzYy/LzM2MF9GXzE5NTYz/ODYyMTlfbGpQSEZL/RUozSHNmY0pjVGJy/SDU4MWZianE3OUtB/akwuanBn",
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) => ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(20),
                          child: Image.network(
                            "https://imgs.search.brave.com/w4VZNFveOGMTnKbTH0xiATTbiTlgO13s89OLsLPLHE4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzE5LzU2LzM4LzYy/LzM2MF9GXzE5NTYz/ODYyMTlfbGpQSEZL/RUozSHNmY0pjVGJy/SDU4MWZianE3OUtB/akwuanBn",
                            fit: BoxFit.fill,
                          ),
                        ),
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
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Cairo",
                    ),
                    textAlign: TextAlign.right,
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
                    newDetails.subHeadLine ?? "not exist",
                    textAlign: TextAlign.right,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.grey[600],
                      fontFamily: "Cairo",
                    ),
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
