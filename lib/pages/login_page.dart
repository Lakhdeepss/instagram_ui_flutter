// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:practice_app/util/MyRoutes.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: camel_case_types
class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

// ignore: camel_case_types
class _login_pageState extends State<login_page> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String name = "";
  // ignore: non_constant_identifier_names
  MoveTOHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      setState(() {});
      Navigator.pushNamed(context, MyRoutes.HomePage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: "login page".text.make(),
          title: const Text(
            "LOGIN PAGE",
            style: TextStyle(
                // height: 20,
                ),
          ),
          // toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          titleSpacing: 0.0,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          elevation: 0.0,
          backgroundColor: Colors.brown,
        ),
        drawer: const Drawer(),
        backgroundColor: Colors.lightGreenAccent,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "welcome  $name",
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 72, 47, 37)),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "enter your name",
                    labelText: "username",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "enter your password",
                    labelText: "password",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      MoveTOHome(context);
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: "submit".text.make())
              ],
            ),
          ),
        ));
  }
}
