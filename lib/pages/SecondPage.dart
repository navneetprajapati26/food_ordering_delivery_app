import 'package:flutter/material.dart';
import 'package:food_ordering_delivery_app/pages/thirdPage.dart';

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
  List<String> title = [
    "Dukin Dounts",
    "Burger King",
    "Peking Roasted Duck",
    "Brarised Pork Ball in Gravy",
    "Dumplings",
    "Steamed Vermicelli Rolls"
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cheezious"),
        backgroundColor: Colors.lime[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              height: height - 150,
              child: Expanded(
                child: ListView.builder(
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          String passImage = image[index];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThirdPage(),
                                settings: RouteSettings(arguments: passImage)),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: [
                              Container(
                                width: width,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Container(
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image:
                                                    AssetImage(image[index])),
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: Container(
                                        width: width - 170,
                                        child: Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                title[index],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Tired of having the same old home-cooked food every day",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 10),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "121",
                                                    style: TextStyle(
                                                      color: Colors.grey[900],
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Icon(
                                                    Icons.watch_later,
                                                    size: 15,
                                                    color: Colors.yellow,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon(
                                                    Icons.verified_user,
                                                    size: 15,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon(
                                                    Icons.warning,
                                                    size: 15,
                                                    color: Colors.yellow,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Spacer(),
            Container(
              height: 50,
              width: width - 100,
              decoration: BoxDecoration(
                  color: Colors.lime[700],
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  )),
              child: Align(
                child: Text(
                  "Order Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
