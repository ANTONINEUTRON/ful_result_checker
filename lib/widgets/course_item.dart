

import 'package:flutter/material.dart';
import 'package:ful_result_checker/pages/result_view_page.dart';

class CourseItem extends StatelessWidget {
  final int index;

  const CourseItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, ResultViewPage.route());
      },
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "100 Level \n1st Semester",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              Text("12 courses"),
            ],
          ),
        ),
      ),
    );
  }
}
