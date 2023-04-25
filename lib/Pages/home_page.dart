import 'package:flutter/material.dart';
import 'package:mental_health_app/util/ex_items.dart';

import '../util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
            elevation: 100,
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[400],
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.grid_view_rounded,
                    size: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 25,
                  ),
                  label: ''),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0)
                  .copyWith(top: 25.0),
              child: Column(
                children: [
                  //greetings Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi SHUBHAM !
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi,Shubham !',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '25 April,2023',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),

                      //notification
                      Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 25,
                          ))
                    ],
                  ),

                  //search Bar
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 25.0),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ),

                  //how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  //four different faces

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //badly
                      EmoticonFace(
                        emoticonFace: '😞',
                        emotionFace: 'Bad',
                      ),
                      // fine
                      EmoticonFace(
                        emoticonFace: '🙂',
                        emotionFace: 'Fine',
                      ),
                      //well
                      EmoticonFace(
                        emoticonFace: '😊',
                        emotionFace: 'Well',
                      ),
                      //excellent
                      EmoticonFace(
                        emoticonFace: '😍',
                        emotionFace: 'Excellent',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 25),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0)
                      .copyWith(top: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 150, vertical: 10.0),
                        child: Divider(
                          color: Colors.grey[350],
                          thickness: 4,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Excercises',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.more_horiz,
                            size: 25,
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          color: Colors.white,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: const [
                              ExItem(
                                color: Colors.red,
                                heading: 'Speaking skills',
                                subHeading: '16 Excercises',
                                iconName: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                              ExItem(
                                color: Colors.blueAccent,
                                heading: 'Reading speed',
                                subHeading: '6 Excercises',
                                iconName: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              ),
                              ExItem(
                                color: Colors.purpleAccent,
                                heading: 'Education',
                                subHeading: '2 Excercises',
                                iconName: Icon(
                                  Icons.work,
                                  color: Colors.white,
                                ),
                              ),
                              ExItem(
                                color: Colors.orange,
                                heading: 'Career growth',
                                subHeading: '8 Excercises',
                                iconName: Icon(
                                  Icons.timeline_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
