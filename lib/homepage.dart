// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jobui/util/job_card.dart';
import 'package:jobui/util/recent_job_card.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final List jobforyou = [
    // [company name,jobtitle,logoimagepath,hourlyrate]
    ["uber", "ui designer", "lib/jobuiicons/uber.png", 45],
    ["uber", "product dev", "lib/jobuiicons/google.png", 90],
    ["uber", "software Eng", "lib/jobuiicons/apple.png", 60],
  ];
  final List recentjobs = [
    // [company name,jobtitle,logoimagepath,hourlyrate]
    ["nike", "web designer", "lib/jobuiicons/nike.png", 35],
    ["uber", "product dev", "lib/jobuiicons/google.png", 90],
    ["uber", "software Eng", "lib/jobuiicons/apple.png", 60],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 75,
          ),
          //app bar
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset("lib/jobuiicons/menu.png"),
            ),
          ),
          SizedBox(
            height: 50,
          ),

          //discover a new job
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Discover a New Path",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 30,
                            child: Image.asset("lib/jobuiicons/search.png"),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search for a job...",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 50,
                  child: Image.asset(
                    "lib/jobuiicons/preferences.png",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),

          //for you -> job card
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "For You",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobforyou.length,
                itemBuilder: (context, index) {
                  return jobcard(
                    companyname: jobforyou[index][0],
                    jobtitle: jobforyou[index][1],
                    logoimagepath: jobforyou[index][2],
                    hourlyrate: jobforyou[index][3],
                  );
                }),
          ),
          SizedBox(
            height: 50,
          ),

          //recently and ->job tiles
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Recently Added",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                  itemCount: recentjobs.length,
                  itemBuilder: ((context, index) {
                    return recentjobcard(
                      companyname: recentjobs[index][0],
                      jobtitle: recentjobs[index][1],
                      logoimagepath: recentjobs[index][2],
                      hourlyrate: recentjobs[index][3],
                    );
                  })),
            ),
          )
        ],
      ),
    );
  }
}
