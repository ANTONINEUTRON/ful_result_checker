import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ful_result_checker/blocs/app_bloc.dart';
import 'package:ful_result_checker/model/student.dart';
import 'package:ful_result_checker/widgets/course_item.dart';
import 'package:ful_result_checker/widgets/notifications.dart';

class DashboardHomeView extends StatelessWidget {
  const DashboardHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Student student = context.read<AppBloc>().state.student!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Notification PageView
            const Notifications(),
            // GridView with 8 cells in 2x2 layout
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: student.semesters.length,
                itemBuilder: (context, index) {
                  return CourseItem(
                    index: index,
                    semester: student.semesters[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
