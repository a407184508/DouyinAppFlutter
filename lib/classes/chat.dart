import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatController extends StatefulWidget {
  const ChatController({super.key});

  @override
  State<ChatController> createState() => _ChatControllerState();
}

class _ChatControllerState extends State<ChatController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Chat"),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return index % 2 == 1
                        ? Container(
                            child: const Row(
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image(
                                      image: AssetImage(
                                          "images/test/image12.png")),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "data123jasldkfjklsajdlkfdata123jasldkfjklsajdlkfdata123jasldkfjklsajdlkfdata123jasldkfjklsajdlkfdata123jasldkfjklsajdlkfdata123jasldkfjklsajdlkf",
                                  ),
                                ))
                              ],
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("data$index"),
                              Container(
                                height: 50,
                                width: 50,
                                child: Image(
                                    image:
                                        AssetImage("images/test/image12.png")),
                              ),
                            ],
                          );
                  }),
            ),
            Container(
              height: 50,
              color: Colors.grey,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoTextField(),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined))
                ],
              ),
            )
          ],
        ));
  }
}
