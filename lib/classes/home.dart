import 'package:flutter/cupertino.dart';

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Container(
      decoration: const BoxDecoration(color: CupertinoColors.activeOrange),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: index % 2 == 0
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('images/test/image10.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const Text("123")
                ],
              ),
            );
          }),
    ));
  }
}
