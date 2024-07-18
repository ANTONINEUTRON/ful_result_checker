import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ful_result_checker/widgets/notification_card.dart';

class Notifications extends StatefulWidget {
  const Notifications({
    super.key,
  });

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  late PageController _pageController;
  int _index = 0;
  final pages = const [
    NotificationCard(filename: 'assets/noti_1.png'),
    NotificationCard(filename: 'assets/noti_1.png'),
    NotificationCard(filename: 'assets/noti_1.png'),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_pageController.hasClients) {
        Timer.periodic(
          Duration(seconds: 8),
          (timer) {
            if (_index > (pages.length - 1)) {
              _index = 0;
            } else {
              _index = _index + 1;
            }
            
            _pageController.animateToPage(
              _index,
              duration: Duration(seconds: 2),
              curve: Curves.bounceOut,
            ); 
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView(
        controller: _pageController,
        children: pages,
      ),
    );
  }
}
