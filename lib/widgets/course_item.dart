import 'package:flutter/material.dart';
import 'package:ful_result_checker/model/semester.dart';
import 'package:ful_result_checker/pages/result_view_page.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({
    super.key,
    required this.index, required this.semester,
  });

  final int index;
  final Semester semester;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, ResultViewPage.route(semester: semester),);
      },
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                semester.title,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              Text("${semester.courses.length} courses"),
            ],
          ),
        ),
      ),
    );
  }
}
