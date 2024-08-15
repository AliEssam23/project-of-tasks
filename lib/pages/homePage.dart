import 'package:flutter/material.dart';
import 'package:project_of_tasks/pages/pageOfAddTask.dart';
import 'package:project_of_tasks/pages/pageOfProfile.dart';
import 'package:project_of_tasks/pages/pageOfViewProduct.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 186, 171, 248),
                    radius: 20,
                    child: Icon(
                      Icons.qr_code_outlined,
                      color: Color(0XFFF5739e2),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton(
                      backgroundColor: const Color(0XFFF5739e2),
                      onPressed: () {
   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const PageOfAddTask();
                        },));

                      },
                      child: const Icon(
                        Icons.add,
                        size: 35,
                      )),
                ],
              ),
            ],
          )
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.account_circle_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const PageOfProfile();
                        },
                      ));
                    },
                  ),
                ),
                const Icon(Icons.logout, color: Color(0XFFF5739e2)),
              ],
            ),
          ))
        ],
        leading: const Padding(
          padding: EdgeInsets.only(left: 11.0, top: 12),
          child: Text(
            "Logo",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "My Tasks",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ContainerTab(50, 35, "All", Colors.white, const Color(0XFFF5739e2), 20),
              ContainerTab(
                  100,
                  35,
                  "Inpogress",
                  const Color.fromARGB(255, 185, 182, 182),
                  const Color.fromARGB(255, 128, 123, 153),
                  20),
              ContainerTab(
                  80,
                  35,
                  "Waiting",
                  const Color.fromARGB(255, 185, 182, 182),
                  const Color.fromARGB(255, 128, 123, 153),
                  20),
              ContainerTab(
                  80,
                  35,
                  "Finished",
                  const Color.fromARGB(255, 185, 182, 182),
                  const Color.fromARGB(255, 128, 123, 153),
                  20),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: List_Tile(
                55,
                22,
                "Waiting",
                const Color.fromARGB(255, 243, 103, 65),
                const Color.fromARGB(255, 215, 160, 156),
                const Color.fromARGB(255, 127, 86, 222),
                "Medium",
                3,
                ),
                onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const PageOfViewProduct();
                        },));

                },
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: List_Tile(
                55,
                22,
                "Waiting",
                const Color.fromARGB(255, 243, 103, 65),
                const Color.fromARGB(255, 215, 160, 156),
                const Color.fromARGB(255, 84, 186, 245),
                "Low",
                3,
                ),
                   onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const PageOfViewProduct();
                        },));

                },
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: List_Tile(
                65,
                22,
                "Inprogress",
                const Color.fromARGB(255, 243, 103, 65),
                const Color.fromARGB(255, 215, 160, 156),
                const Color.fromARGB(255, 209, 86, 24),
                "Heigh",
                3,
                ),
                   onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const PageOfViewProduct();
                        },));

                },
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: List_Tile(
                55,
                22,
                "Finished",
                const Color.fromARGB(255, 34, 112, 168),
                const Color.fromARGB(255, 176, 210, 224),
                const Color.fromARGB(255, 127, 86, 222),
                "Medium",
                3,
                ),
                   onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const PageOfViewProduct();
                        },));

                },
          ),
        ]),
      ),
    );
  }

  Container ContainerTab(double width, double height, String text,
      Color colorText, Color backgroundColor, double radius) {
    return Container(
      width: width,
      height: height,
      child: Center(
          child: Text(
        "$text",
        style: TextStyle(color: colorText),
      )),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadiusDirectional.circular(radius)),
    );
  }

  ListTile List_Tile(
      double width,
      double height,
      String text,
      Color colorText,
      Color backgroundColor,
      Color colorFlag,
      String flag,
      double radius,
      ) {
    return ListTile(
      title: Row(children: [
        const Text(
          "Grocery Shopping...",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 5),
            child: Container(
              width: width,
              height: height,
              child: Center(
                  child: Text(
                "$text",
                style: TextStyle(color: colorText, fontSize: 12),
              )),
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadiusDirectional.circular(radius)),
            ))
      ]),
      subtitle: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text("This application is designed for s...."),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.flag_outlined,
                        color: colorFlag,
                      ),
                      Text(
                        "$flag",
                        style: TextStyle(color: colorFlag),
                      ),
                    ],
                  )
                ],
              ),
              const Text("30/12/2022")
            ],
          ),
        )
      ]),
      leading: Container(
        width: 70,
        height: 70,
        child: const Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart_outlined,
                color: Color.fromARGB(255, 215, 105, 37),
              ),
              CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage(
                  "images/imageLike.jpg",
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Grocery",
                style: TextStyle(
                    fontSize: 10, color: Color.fromARGB(255, 12, 68, 157)),
              ),
              Text(
                "Online",
                style: TextStyle(fontSize: 10, color: Colors.green),
              )
            ],
          )
        ]),
      ),
      trailing: const Icon(
        Icons.more_vert_outlined,
        color: Colors.black,
      ),
    );
  }
}
