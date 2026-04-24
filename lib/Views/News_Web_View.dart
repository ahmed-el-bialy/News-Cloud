import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailsView extends StatefulWidget {
  final String url;

  const NewsDetailsView({super.key, required this.url});

  @override
  State<NewsDetailsView> createState() => _NewsDetailsViewState();
}

class _NewsDetailsViewState extends State<NewsDetailsView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "News",
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: "Cloud",
                style: TextStyle(color: Colors.orange[800]),
              ),
            ],
          ),
        ),
        centerTitle: true,
        elevation: 5,
        scrolledUnderElevation: 10,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
