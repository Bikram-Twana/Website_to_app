import 'package:flutter/material.dart';
import 'package:website_to_app/screens/about_page.dart';
import 'package:website_to_app/screens/browser_page.dart';

import '../config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart & FLutter Sites"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ));
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: SafeArea(
        child: GridView.builder(
            itemCount: Config.allSites.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (ctx, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BrowserPage(
                              Config.allSites.keys
                                      .toList()[index][0]
                                      .toUpperCase() +
                                  Config.allSites.keys
                                      .toList()[index]
                                      .substring(1),
                              Config.allSites.values.toList()[index]),
                        ))
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.indigo),
                    ),
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          child: Image.network(
                            "${Config.allImages[index]}",
                            height: 150,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            Config.allSites.keys
                                    .toList()[index][0]
                                    .toUpperCase() +
                                Config.allSites.keys
                                    .toList()[index]
                                    .substring(1),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
