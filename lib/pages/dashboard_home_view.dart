import 'package:flutter/material.dart';
import 'package:ful_result_checker/pages/result_view_page.dart';
import 'package:ful_result_checker/widgets/course_item.dart';
import 'package:ful_result_checker/widgets/notifications.dart';

class DashboardHomeView extends StatelessWidget {
  const DashboardHomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
                itemCount: 8,
                itemBuilder: (context, index) {
                  return CourseItem(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
