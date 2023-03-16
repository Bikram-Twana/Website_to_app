import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:website_to_app/screens/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// String website = "https://dart-tutorial.com/";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dart Tutorail",
      home: HomePage(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // late WebViewController controller;

//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   controller = WebViewController()
//   //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
//   //     ..setBackgroundColor(const Color(0x00000000))
//   //     ..setNavigationDelegate(
//   //       NavigationDelegate(
//   //         onProgress: (int progress) {
//   //           // Update loading bar.
//   //         },
//   //         onPageStarted: (String url) {},
//   //         onPageFinished: (String url) {},
//   //         onWebResourceError: (WebResourceError error) {},
//   //         onNavigationRequest: (NavigationRequest request) {
//   //           if (request.url.startsWith(website)) {
//   //             return NavigationDecision.prevent;
//   //           }
//   //           return NavigationDecision.navigate;
//   //         },
//   //       ),
//   //     )
//   //     ..loadRequest(Uri.parse('https://flutter.dev/'));
//   // }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: SafeArea(
//       //   child: Padding(
//       //     padding: EdgeInsets.fromLTRB(4, 5, 4, 2),
//       //     child: WebViewWidget(controller: controller),
//       //   ),
//       // ),
//     );
//   }
// } 
