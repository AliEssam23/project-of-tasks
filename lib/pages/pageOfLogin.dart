// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:project_of_tasks/pages/homePage.dart';


class PageOfLogin extends StatefulWidget {
  const PageOfLogin({super.key});

  @override
  State<PageOfLogin> createState() => _PageOfLoginState();
}

class _PageOfLoginState extends State<PageOfLogin> {
  // ignore: unnecessary_new
  GlobalKey<FormState> keyOfForm = new GlobalKey<FormState>();
  bool stateUser = false;
  String name = '',
      phone = '',
      experience = '',
      level = '',
      address = '',
      Password = '';
    


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: keyOfForm,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: MediaQuery.of(context).size.width,
                  height: stateUser == true ? 200 : 450,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/imageOfWelcomPage.jpg"))),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: stateUser == true ? 10 : 20,
                ),
                stateUser == true
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 202, 196, 196),
                                width: 2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: TextFormField(
                            onSaved: (newValue) {
                              name = newValue!;
                            },
                            style: const TextStyle(fontSize: 18.0),
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              hintText: "Name",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 202, 196, 196),
                                    width: 2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      )
                    : const Padding(padding: EdgeInsetsDirectional.all(0)),
                //////////////////////////////////////////////////////////////////
                stateUser == true
                    ? const SizedBox(
                        height: 5,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 202, 196, 196), width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      width: 400,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          "images/imageOfIraq.jpg"))),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("+964"),
                            const Icon(
                              Icons.expand_more_outlined,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 200,
                              height: 40,
                              child: TextFormField(
                                onSaved: (newValue) {
                                  phone = newValue!;
                                },
                                style: const TextStyle(fontSize: 18.0),
                                keyboardType: TextInputType.phone,
                                cursorColor: Colors.grey,
                                decoration: const InputDecoration(
                                    hintText: "123 456-7890",
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ///////////////////////////////////////////////////////////////
                stateUser == true
                    ? const SizedBox(
                        height: 5,
                      )
                    : const SizedBox(
                        height: 10,
                      ),

                stateUser == true
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 202, 196, 196),
                                width: 2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: TextFormField(
                            onSaved: (newValue) {
                              experience = newValue!;
                            },
                            style: const TextStyle(fontSize: 18.0),
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              hintText: "Years of experience",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 202, 196, 196),
                                    width: 2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      )
                    : const Padding(padding: EdgeInsetsDirectional.all(0)),
                stateUser == true
                    ? const SizedBox(
                        height: 5,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                /////////////////////////////////////////////////////////////////////
                stateUser == true
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 202, 196, 196),
                                  width: 2),
                              borderRadius:
                                  BorderRadiusDirectional.circular(15)),
                          child: Container(
                            width: 400,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(15),
                            ),
                            child: Center(
                              child: DropdownButton(
                                  underline: const Padding(
                                      padding: EdgeInsetsDirectional.all(0)),
                                  hint: Padding(
                                    padding: EdgeInsets.only(
                                        right: level.isEmpty ? 130 : 250.0),
                                    child: Text(level.isEmpty
                                        ? "Choose experience Level"
                                        : "${level}"),
                                  ),
                                  items: const [
                                    DropdownMenuItem(
                                      child: Text("senior"),
                                      value: "senior",
                                    ),
                                    DropdownMenuItem(
                                      child: Text("midLevel"),
                                      value: "midLevel",
                                    ),
                                    DropdownMenuItem(
                                      child: Text("junior"),
                                      value: "junior",
                                    ),
                                    DropdownMenuItem(
                                      child: Text("fresh"),
                                      value: "fresh",
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      level = value!;
                                    });
                                    print(level);
                                  }),
                            ),
                          ),
                        ),
                      )
                    : const Padding(padding: EdgeInsetsDirectional.all(0)),
                stateUser == true
                    ? const SizedBox(
                        height: 5,
                      )
                    : const SizedBox(
                        height: 0,
                      ),

/////////////////////////////////////////////////////////////////////////////////
                stateUser == true
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 202, 196, 196),
                                width: 2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: TextFormField(
                            onSaved: (newValue) {
                              address = newValue!;
                            },
                            style: const TextStyle(fontSize: 18.0),
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              hintText: "Address",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 202, 196, 196),
                                    width: 2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      )
                    : const Padding(padding: EdgeInsetsDirectional.all(0)),
                stateUser == true
                    ? const SizedBox(
                        height: 5,
                      )
                    : const SizedBox(
                        height: 0,
                      ),

/////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 202, 196, 196), width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      onSaved: (newValue) {
                        Password = newValue!;
                      },
                      style: const TextStyle(fontSize: 18.0),
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Color.fromARGB(255, 202, 196, 196),
                        ),
                        fillColor: Colors.grey[200],
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 202, 196, 196),
                              width: 2),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: stateUser == true ? 10 : 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: InkWell(
                    child: Container(
                      width: 400,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0XFFF5739e2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          stateUser == true ? "Sign up" : "Sign In",
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                   onTap:(){

                 Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const HomePage();
                        },));

                    }
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(stateUser == true
                        ? "Already have any account"
                        : "Didn't have any account?"),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            stateUser = !stateUser;
                          });
                        },
                        child: Text(
                          stateUser == true ? "Sign in" : "Sign Up here",
                          style: const TextStyle(
                            color: Color(0XFFF5739e2),
                          ),
                        ))
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
