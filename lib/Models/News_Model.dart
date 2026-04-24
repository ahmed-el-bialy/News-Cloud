class NewsModel {
  String? imageUrl;
  String headLine;
  String? subHeadLine;
  String newsUrl;

  NewsModel({
    required this.imageUrl,
    required this.headLine,
    required this.subHeadLine,
    required this.newsUrl,
  });

  factory NewsModel.fromJson(jsonData) {
    return NewsModel(
      imageUrl:
          jsonData['image_url'] ??
          "https://imgs.search.brave.com/w4VZNFveOGMTnKbTH0xiATTbiTlgO13s89OLsLPLHE4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzE5LzU2LzM4LzYy/LzM2MF9GXzE5NTYz/ODYyMTlfbGpQSEZL/RUozSHNmY0pjVGJy/SDU4MWZianE3OUtB/akwuanBn",
      headLine: jsonData['title'] ?? "Without Title",
      subHeadLine: jsonData['description'] ?? "Description doesn't exist",

      newsUrl: jsonData["link"] ?? "https://your-fallback-page.com/error",
    );
  }
}
