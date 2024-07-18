import 'package:flutter/material.dart';
import 'package:ful_result_checker/model/student.dart';

class DashboardProfileView extends StatelessWidget {
  const DashboardProfileView({
    super.key,
    required this.student,
  });
  
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.person_2,
              size: 200,
            ),
          ),
           Text(
            student.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
           Text(
            student.matric,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const ProfileItems(
            title: "Update Profile",
          ),
          const ProfileItems(
            title: "Change password",
          ),
          const ProfileItems(
            title: "Privacy policy",
          ),
          const ProfileItems(
            title: "Theme",
          ),
          const ProfileItems(
            title: "Sign out",
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class ProfileItems extends StatelessWidget {
  const ProfileItems({
    super.key,
    required this.title,
    this.color,
  });

  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          textColor: color,
        ),
        const Divider(),
      ],
    );
  }
}
