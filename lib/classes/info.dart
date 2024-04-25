import 'package:flutter/cupertino.dart';
import 'package:flutter_run_app/classes/chat.dart';

class InfoController extends StatefulWidget {
  const InfoController({super.key});

  @override
  State<InfoController> createState() => _InfoControllerState();
}

class _InfoControllerState extends State<InfoController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(middle: Text("Messages")),
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              // return Title(color: Colors.red, child: Text("123"));
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const ChatController()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/test/image1.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nickname"),
                            Text(
                              "hi welcome to beijing. nice to every day. app store google pay.",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "2024-04-24 19:33:14",
                        maxLines: 1,
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
