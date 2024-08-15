import 'package:flutter/material.dart';
import 'package:project_of_tasks/pages/welcomePage.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) {
          return const WelcomePage();
        }));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFF5739e2),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Task",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "y",
            style: TextStyle(
              color: Color.fromARGB(255, 245, 218, 42),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      )),
    );
  }
}
