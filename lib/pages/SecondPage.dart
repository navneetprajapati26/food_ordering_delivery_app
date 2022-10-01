import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> image = [
    "assets/list1.jpg",
    "assets/list2.jpg",
    "assets/list3.jpg",
    "assets/list4.jpg",
    "assets/list5.jpg",
    "assets/list6.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container();
  }
}
