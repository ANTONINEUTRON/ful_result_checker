import 'package:flutter/material.dart';
import 'package:ful_result_checker/features/pages/dashboard_home_view.dart';
import 'package:ful_result_checker/features/pages/dashboard_profile_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  static  route() => MaterialPageRoute(
        builder: (context) => const DashboardPage(),
      );

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _index = 0;
  final _pages = const [
    DashboardHomeView(),
    DashboardProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _index,
          children: _pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) => setState(() {
          _index = value;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.document_scanner_rounded,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_4,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
