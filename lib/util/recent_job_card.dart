import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class recentjobcard extends StatelessWidget {
  final String companyname;
  final String jobtitle;
  final String logoimagepath;
  final int hourlyrate;
  recentjobcard(
      {required this.companyname,
      required this.jobtitle,
      required this.logoimagepath,
      required this.hourlyrate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 50,
                    child: Image.asset(logoimagepath),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(jobtitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      companyname,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.green,
                child: Text(
                  "\$" + hourlyrate.toString() + "/h",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
