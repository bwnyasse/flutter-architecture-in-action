import 'dart:async';

import 'package:flutter/material.dart';

import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class ApplyJob extends StatefulWidget {
  final String url;
  const ApplyJob({Key? key, required this.url}) : super(key: key);

  @override
  State<ApplyJob> createState() => _ApplyJobState();
}

class _ApplyJobState extends State<ApplyJob> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Apply to this job",
          style: TextStyle(fontWeight: FontWeight.bold, height: 1.2),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        onProgress: (int progress) {
          print('WebView is loading (progress : $progress%)');
        },
        navigationDelegate: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            print('blocking navigation to $request}');
            return NavigationDecision.prevent;
          }
          print('allowing navigation to $request');
          return NavigationDecision.navigate;
        },
        onPageStarted: (String url) {
          print('Page started loading: $url');
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');
        },
        gestureNavigationEnabled: true,
        backgroundColor: const Color(0x00000000),
      ),
    );
  }
}
