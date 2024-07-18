import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ful_result_checker/blocs/app_bloc.dart';
import 'package:ful_result_checker/model/student.dart';
import 'package:ful_result_checker/pages/dashboard_home_view.dart';
import 'package:ful_result_checker/pages/dashboard_profile_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    super.key,
  });

  static route() => MaterialPageRoute(
        builder: (context) => DashboardPage(),
      );

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _index = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _pages = const [
      DashboardHomeView(),
      DashboardProfileView(),
    ];
  }

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
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_4,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
