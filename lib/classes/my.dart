import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyController extends StatefulWidget {
  const MyController({super.key});

  @override
  State<MyController> createState() => _MyControllerState();
}

class _MyControllerState extends State<MyController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CupertinoButton(
                  onPressed: () {},
                  child: Icon(CupertinoIcons.chat_bubble_fill, size: 30)),
              CupertinoButton(
                  onPressed: () {},
                  child: Icon(CupertinoIcons.settings, size: 30)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Spacer(),
              SizedBox(
                  height: 100,
                  width: 100,
                  child: Image(image: AssetImage("images/test/image2.png"))),
              Spacer(),
              Column(
                children: [
                  Text("Name", style: TextStyle(fontSize: 20)),
                  Text("@username", style: TextStyle(fontSize: 15)),
                  Text("Bio", style: TextStyle(fontSize: 15)),
                ],
              ),
              Spacer(),
            ],
          ),
          // CupertinoFormSection(children: children)
          CupertinoFormSection(
            children: [
              CupertinoListTile(
                leading: CircleAvatar(
                    child: Image(image: AssetImage("images/test/image2.png"))),
                title: Text("123"),
                // subtitle: Text("123"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle cell tap here
                },
              ),
              CupertinoListTile(
                leading: CircleAvatar(
                    child: Image(image: AssetImage("images/test/image2.png"))),
                title: Text("123"),
                // subtitle: Text("123"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle cell tap here
                },
              ),
            ],
          )
        ],
      ),
    ));
  }
}
