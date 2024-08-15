import 'package:flutter/material.dart';

class PageOfViewProduct extends StatefulWidget {
  const PageOfViewProduct({super.key});

  @override
  State<PageOfViewProduct> createState() => _PageOfViewProductState();
}

class _PageOfViewProductState extends State<PageOfViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/imageLeft.jpg")),
              ),
            ),
            const Text(
              "Add new task",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.more_vert_outlined,
                size: 28,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromARGB(255, 215, 105, 37),
                      size: 70,
                    ),
                    CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage("images/imageBigLike.jpg"),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Grocery ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 12, 68, 157),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      "Grocery Shopping App",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        """This application is designed for super shops. By using this application they can enlist all theit products in one place and deliver.Customers will get a one-stop Solution for their daily shopping.""",
                        style: TextStyle(
                            color: Color.fromARGB(255, 173, 170, 170)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 211, 208, 235),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "End Date",
                                style: TextStyle(
                                    color: Color.fromARGB(172, 97, 95, 95)),
                              ),
                              Text(
                                "30 June,2022",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(172, 0, 0, 0),
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 12.0),
                          child: Icon(
                            Icons.calendar_month_outlined,
                            size: 20,
                            color: Color(0XFFF5739e2),
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 208, 235),
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
                              Text(
                                "Inprogress",
                                style: TextStyle(
                                  color: Color(0XFFF5739e2),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                ),
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
                  height: 7,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 208, 235),
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
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Text(
                                  "Medium Priority",
                                  style: TextStyle(
                                      color: Color(0XFFF5739e2),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18),
                                ),
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
                Container(
                  width: 280,
                  height: 180,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/imageOfQrCode.jpg"))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
