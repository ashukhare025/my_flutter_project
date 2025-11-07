import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewHomeScreen extends StatefulWidget {
  const WebViewHomeScreen({super.key});

  @override
  State<WebViewHomeScreen> createState() => _WebViewHomeScreenState();
}

class _WebViewHomeScreenState extends State<WebViewHomeScreen> {
  WebViewController controller = WebViewController();
  int progress = 0;

  @override
  void initState() {
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.setNavigationDelegate(
      NavigationDelegate(
        onProgress: (value) {
          setState(() {
            progress = value;
          });
        },
      ),
    );
    controller.loadRequest(Uri.parse('https://google.com'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () async {
            if (await controller.canGoBack()) {
              controller.goBack();
            }
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Visibility(
            visible: !(progress == 0 || progress == 100),
            child: LinearProgressIndicator(value: progress / 100),
          ),
          Expanded(child: WebViewWidget(controller: controller)),
        ],
      ),
    );
  }
}
