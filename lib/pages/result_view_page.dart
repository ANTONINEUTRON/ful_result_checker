import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ful_result_checker/blocs/app_bloc.dart';
import 'package:ful_result_checker/model/semester.dart';
import 'package:ful_result_checker/model/student.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class ResultViewPage extends StatelessWidget {
  ResultViewPage({
    super.key,
    required this.semester,
  });

  final Semester semester;
  final ScreenshotController screenshotController = ScreenshotController();

  static route({required Semester semester}) => MaterialPageRoute(
        builder: (context) => ResultViewPage(
          semester: semester,
        ),
      );

  @override
  Widget build(BuildContext context) {
    Student student = context.read<AppBloc>().state.student!;

    return Scaffold(
      appBar: AppBar(
          // title: const Text("100 Level 2nd Semester"),
          ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Screenshot(
            controller: screenshotController,
            child: ListView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              children: [
                Text(
                  "Federal University of Lafia",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(student.name),
                      Text(
                          DateTime.now().toLocal().toString().substring(0, 11)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    semester.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FixedColumnWidth(200)},
                  children: [
                    const TableRow(
                      children: [
                        Text("Course code\nCourse Title"),
                        Text("Credit"),
                        Text("Score"),
                        Text("Grade"),
                      ],
                    ),
                    ...semester.courses.map((course) {
                      return TableRow(children: [
                        Text("${course.code}\n${course.title}"),
                        Text(course.creditLoad.toString()),
                        Text("${course.score}"),
                        Text(_getGrade(course.score)),
                      ]);
                    }),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.all(22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GPA: ${semester.gpa}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "CGPA: ${student.cgpa}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: _takeScreenshot,
            child: const Text("Print"),
          ),
        ],
      ),
    );
  }

  String _getGrade(int score) {
    if (score < 40) {
      return "F";
    } else if (score >= 40 && score <= 45) {
      return "E";
    } else if (score > 45 && score < 50) {
      return "D";
    } else if (score >= 50 && score < 60) {
      return "C";
    } else if (score > 60 && score < 70) {
      return "B";
    } else {
      return "A";
    }
  }

  void _takeScreenshot() async {
    var capturedImage = await screenshotController.capture();
    //save screenshot
    final directory = await getTemporaryDirectory();
    final imageFile = await File('${directory.path}/image.png').create();
    await imageFile.writeAsBytes(capturedImage!);

    //share file with user
    await Share.shareXFiles([XFile(imageFile.path)]);
  }
}
