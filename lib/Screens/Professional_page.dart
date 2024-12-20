import 'package:coding_junior_company_assignment/Screens/drawer_screen.dart';
import 'package:coding_junior_company_assignment/models/card.dart';
import 'package:coding_junior_company_assignment/models/course_page.dart';
import 'package:coding_junior_company_assignment/models/notification_page.dart';
import 'package:flutter/material.dart';

class ProfessionalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140), // Increased AppBar height
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade900, Colors.blueAccent.shade100],
                  // Gradient blue shades
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SingleChildScrollView(
                // Allow the content to scroll
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 30, bottom: 20, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              size: 38,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyDrawer()));
                            },
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.yellow,
                            child: Icon(Icons.local_fire_department,
                                color: Colors.red),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Container(
                                    height: 25,
                                    child: Row(
                                      children: [
                                        Text(
                                          'Statistics',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.blue,
                                          size: 12,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NotificationsScreen()));
                            },
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              child:
                                  Icon(Icons.notifications, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Hi user,Welcome back!',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Search courses',
                          prefixIcon: Icon(
                            Icons.search, // Search icon
                            color: Colors.blue, // Icon color
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade900,
                        Colors.blueAccent.shade100
                      ],
                      // Gradient blue shades
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ready for a\nNew Challenge?',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Participate in this hackathon to solve\nAmazon\'s Warehouse Management!',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink.shade600,
                              padding: EdgeInsets.all(10),
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Learn More',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  size: 30,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left:15, right: 15, top: 10, bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Continue Learning",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18),
                              ),
                              Spacer(),
                              Text(" View All > ",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CoursePage()));
                            },
                            child: ContinueLearningCard(
                              title: "HTML",
                              description: 'CH-4.3.1/08|12 pages',
                              progress: '53.00',
                              icon: Icons.file_copy_outlined,
                              cardColor: Colors.tealAccent.shade700,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ContinueLearningCard(
                            title: "Web Development",
                            description: 'CH-4.3.1/08|2.26 mins',
                            progress: '73.00',
                            icon: Icons.video_settings_rounded,
                            cardColor: Colors.green.shade500,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purpleAccent.shade700,
                                  Colors.purpleAccent.shade100
                                ],
                                // Gradient blue shades
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'It takes just two minutes to',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Level Up Your Skills !',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: 200,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        padding: EdgeInsets.all(10),
                                        textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Take Flash Quiz',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 30,
                                            color: Colors.blue,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ContinueLearningCard(
                            title: "Web Development",
                            description: 'CH-4.3.1/08|2.26 mins',
                            progress: '73.00',
                            icon: Icons.video_settings_rounded,
                            cardColor: Colors.green.shade500,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ContinueLearningCard(
                            title: "HTML",
                            description: 'CH-4.3.1/08|12 pages',
                            progress: '53.00',
                            icon: Icons.file_copy_outlined,
                            cardColor: Colors.tealAccent.shade700,
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
