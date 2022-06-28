import 'package:flutter/material.dart';

import '../../models/job.dart';

class JobDetail extends StatelessWidget {
  final Job job;

  JobDetail(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: 550,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 60,
              height: 5,
              color: Colors.grey.withOpacity(0.3),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ) ,
    );
  }
}
