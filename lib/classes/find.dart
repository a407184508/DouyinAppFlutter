import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindController extends StatefulWidget {
  const FindController({super.key});

  @override
  State<FindController> createState() => _FindControllerState();
}

class _FindControllerState extends State<FindController> {
  var gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.8);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("Find"),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: gridDelegate,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          child: Image.asset(
                            "images/test/image1.png",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      const Text("我是标题",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      const Row(
                        children: [
                          Text("￥",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.red)),
                          Text("100",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.red)),
                        ],
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}
