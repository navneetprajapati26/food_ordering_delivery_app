import 'package:flutter/material.dart';
import 'package:food_ordering_delivery_app/pages/SecondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
    return Scaffold(
      body: Container(
        //alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: height / 2 - 120,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.darken),
                            image: AssetImage("assets/f1.jpg")),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(150))),
                    height: height / 2 - 140,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                              child: Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Contact Us Now",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Cheezious",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Get Your Desire Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  new Positioned(
                    top: height / 2 - 155,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.lime[700],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),

                  child: Text(
                    "SPECIAL OFFERS",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                  ),
                ),
              ],
            ),
            Container(
              height: height / 2 - 140,
              child: ListView.builder(
                  itemCount: image.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.3),
                                    BlendMode.darken),
                                image: AssetImage(
                                  image[index],
                                )),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  }),
            ),
            Spacer(),
            Container(
              height: height - (height / 2 - 120 + height / 2 - 80),
              width: width,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Container(
                      height: 100,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.2),
                                  BlendMode.darken),
                              image: AssetImage("assets/foof2.jpg"))),
                    ),
                  ),
                  new Positioned(
                    width: width,
                    bottom: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.lime[100],
                            child: InkWell(
                              splashColor: Colors.lime[100],
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(Icons.menu),
                              ),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>SecondPage())
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
