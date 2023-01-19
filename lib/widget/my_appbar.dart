import 'package:flutter/material.dart';
import '../style/style.dart';
import '../pages/about_page.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purpleAccent[400],
      title: Text(
        'MyK-POP',
        style: titleBar,
      ),
      actions: [
        IconButton(
          tooltip: "About",
          icon: const Icon(Icons.info),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const AboutPage();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
