import 'package:flutter/material.dart';
import 'package:project_of_tasks/pages/pageOfLogin.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 450,
            decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/imageOfWelcomPage.jpg"))),
          ),
          const Text(
            "Task Management &",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "To-Do List",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "This productive tool is designed to help",
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "you better manage your task",
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "project-wise conveniently",
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
             print("Let's Start");
             Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const PageOfLogin();
                        },));
            },
            child: Container(
              width: 250,
              height: 45,
              decoration: BoxDecoration(
                  color: const Color(0XFFF5739e2),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Let's Start",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, bottom: 2),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/imageRight.jpg"),
                        ),
                      ),
                    ),
                  )
                ],
              )),
            ),
          )
        ]),
      ),
    );
  }
}
