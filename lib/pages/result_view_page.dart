import 'package:flutter/material.dart';
import 'package:ful_result_checker/model/course.dart';
import 'package:ful_result_checker/model/semester.dart';
import 'package:ful_result_checker/model/student.dart';

class ResultViewPage extends StatelessWidget {
  const ResultViewPage({
    super.key,
    required this.semester,
  });

  final Semester semester;

  static route({required Semester semester}) => MaterialPageRoute(
        builder: (context) => ResultViewPage(semester: semester,),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("100 Level 2nd Semester"),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
