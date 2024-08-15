import 'package:flutter/material.dart';

class PageOfAddTask extends StatefulWidget {
  const PageOfAddTask({super.key});

  @override
  State<PageOfAddTask> createState() => _PageOfAddTaskState();
}

class _PageOfAddTaskState extends State<PageOfAddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/imageLeft.jpg")),
                ),
              ),
          title: const Text(
            "Add new task",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Color(0XFFF5739e2),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      width: 400,
                      height: 70,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_a_photo_outlined,
                            color: Color(0XFFF5739e2),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0, top: 2),
                            child: Text(
                              "Add Img",
                              style: TextStyle(
                                  color: Color(0XFFF5739e2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Task title",
                        style:
                            TextStyle(color: Color.fromARGB(255, 139, 136, 136)),
                      )
                    ],
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 148, 145, 145), width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                      onSaved: (newValue) {},
                      style: const TextStyle(fontSize: 18.0),
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        hintText: "Enter title here...",
                        hintStyle: const TextStyle(fontSize: 16),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 202, 196, 196),
                              width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Task Description",
                        style:
                            TextStyle(color: Color.fromARGB(255, 139, 136, 136)),
                      )
                    ],
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 148, 145, 145), width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      width: 400,
                      height: 150,
                      child: TextFormField(
                        onSaved: (newValue) {},
                        style: const TextStyle(fontSize: 18.0),
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            hintText: "Enter title here...",
                            hintMaxLines: 8,
                            hintStyle: const TextStyle(fontSize: 16),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Priority",
                        style:
                            TextStyle(color: Color.fromARGB(255, 139, 136, 136)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 175, 170, 212),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.flag_outlined,
                                  color: Color(0XFFF5739e2),
                                  size: 28,
                                ),
                                Text(
                                  "Medium Priority",
                                  style: TextStyle(
                                      color: Color(0XFFF5739e2),
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.favorite_outlined,
                          size: 20,
                          color: Color(0XFFF5739e2),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Due date",
                        style:
                            TextStyle(color: Color.fromARGB(255, 139, 136, 136)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          width: 1, color: Color.fromARGB(255, 148, 145, 145)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: 400,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "choose due date",
                            style: TextStyle(
                                color: Color.fromARGB(255, 105, 102, 102)),
                          ),
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 20,
                            color: Color(0XFFF5739e2),
                          ),
                        ],
                      ),
                    ),
                  ),const SizedBox(height: 15,),
                  Container(
                      width: 400,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0XFFF5739e2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                          child: Text(
                        "Add task",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ))),
                ],
              ),
            ),
          ),
        ));
  }
}
