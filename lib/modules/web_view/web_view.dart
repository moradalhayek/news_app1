import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class WebView_Screen extends StatelessWidget {
  WebView_Screen({required this.url});
  late final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: WebView(
          initialUrl: url,
        ));
  }
}
