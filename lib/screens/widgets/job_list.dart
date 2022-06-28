import 'package:flutter/material.dart';
import 'package:scratch_app/models/job.dart';
import 'package:scratch_app/screens/widgets/job_detail.dart';
import 'package:scratch_app/screens/widgets/job_item.dart';

class JobList extends StatelessWidget {
  final jobList= Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric( horizontal: 25),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => JobDetail(jobList[index]));
            },
              child: JobItem(jobList[index])
          ),
          separatorBuilder: (_, index) => SizedBox(width: 15,),
          itemCount: jobList.length),
    );
  }
}
