import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ful_result_checker/blocs/app_bloc.dart';
import 'package:ful_result_checker/model/student.dart';
import 'package:ful_result_checker/pages/home_page.dart';
import 'package:ful_result_checker/pages/privacy_policy_page.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardProfileView extends StatelessWidget {
  const DashboardProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Student student = context.read<AppBloc>().state.student!;

    return SingleChildScrollView(
      child: Padding(
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              student.matric,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const ProfileItems(
              title: "Change password",
            ),
            ProfileItems(
              title: "Fulafia website",
              onTap: () => launchUrl(
                Uri.parse('https://fulafia.edu.ng/'),
              ),
            ),
            ProfileItems(
              title: "Pay Fees",
              onTap: () => launchUrl(
                Uri.parse('https://my.fulafia.edu.ng/'),
              ),
            ),
            ProfileItems(
              title: "Whatsapp",
              onTap: () => launchUrl(
                Uri.parse("https://wa.me/2348112990109"),
              ),
            ),
            ProfileItems(
              title: "Email",
              onTap: () => launchUrl(
                Uri.parse("mailto:info@fulafia.edu.ng"),
              ),
            ),
            ProfileItems(
              title: "Privacy policy",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyPage(),
                  )),
            ),
            ProfileItems(
              title: "Sign out",
              color: Colors.red,
              onTap: () {
                context.read<AppBloc>().signOut();

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItems extends StatelessWidget {
  const ProfileItems({
    super.key,
    required this.title,
    this.color,
    this.onTap,
  });

  final String title;
  final Color? color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          onTap: onTap,
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          textColor: color,
        ),
        const Divider(),
      ],
    );
  }
}
