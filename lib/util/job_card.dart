import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class jobcard extends StatelessWidget {
  final String companyname;
  final String jobtitle;
  final String logoimagepath;
  final int hourlyrate;
  jobcard(
      {required this.companyname,
      required this.jobtitle,
      required this.logoimagepath,
      required this.hourlyrate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 60,
                      child: Image.asset(logoimagepath),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: Colors.grey[500],
                        padding: EdgeInsets.all(8),
                        child: Text("part time"),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    jobtitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                Text(
                  // ignore: prefer_interpolation_to_compose_strings
                  "\$" + hourlyrate.toString() + "/hr",
                ),
              ]),
        ),
      ),
    );
  }
}
