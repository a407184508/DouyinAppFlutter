import 'package:flutter/cupertino.dart';
import 'package:flutter_run_app/classes/tabbar.dart';

class LoginController extends StatelessWidget {
  const LoginController({super.key});

  void _nextPage(BuildContext context) {
    Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (context) => const TabbarController()));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/test/image2.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage('images/test/image10.png'),
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                CupertinoButton(
                  child: Text("Apple Login"),
                  onPressed: () {
                    _nextPage(context);
                  },
                  color: CupertinoColors.systemRed,
                ),
                SizedBox(height: 20),
                CupertinoButton(
                  child: Text("Other Login"),
                  onPressed: () {},
                  color: CupertinoColors.systemRed,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CupertinoButton(
                      child: Text("Sign Up"),
                      onPressed: () {},
                      color: CupertinoColors.systemRed,
                    ),
                    CupertinoButton(
                      child: Text("Sign In"),
                      onPressed: () {},
                      color: CupertinoColors.systemRed,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
