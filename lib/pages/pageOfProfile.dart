import 'package:flutter/material.dart';

class PageOfProfile extends StatelessWidget {
  const PageOfProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        leading:  
          Container(
                width: 30,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/imageLeft.jpg")
                      
                      ),
                ),
              ),
      title: const Text(
        "Profile",
        style: TextStyle(color: Colors.black),
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          _container("Name", "Islam Sayed"),
          const SizedBox(
            height: 5,
          ),
          Container(
              width: 400,
              height: 75,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(171, 224, 219, 219),
                  borderRadius: BorderRadius.circular(10)),
              child:  const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "PHONE",
                          style:
                              TextStyle(color: Color.fromARGB(172, 97, 95, 95)),
                        ),
                        Text(
                          "+964 123 456-7890",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(172, 84, 82, 82),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right:12.0),
                    child: Icon(Icons.copy_all,color: Color(0XFFF5739e2),),
                  )
                ],
              )),
          const SizedBox(
            height: 5,
          ),
          _container("LEVEL", "Senior"),
          const SizedBox(
            height: 5,
          ),
          _container("YEARS OF EXPERIENCE", "7 years"),
          const SizedBox(
            height: 5,
          ),
          _container("LOCATION", "Fayyum, Egypt"),
        ]),
      ),
    );
  }

  Container _container(String Title, String SubTitle) {
    return Container(
        width: 400,
        height: 75,
        decoration: BoxDecoration(
            color: const Color.fromARGB(171, 224, 219, 219),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "$Title",
                    style: const TextStyle(color: Color.fromARGB(172, 97, 95, 95)),
                  ),
                  Text(
                    "$SubTitle",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(172, 84, 82, 82),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
