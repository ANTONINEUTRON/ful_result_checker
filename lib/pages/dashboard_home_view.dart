
import 'package:flutter/material.dart';

class DashboardHomeView extends StatelessWidget {
  const DashboardHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Result Checker'),
      ),
      body: Column(
        children: [
          // Notification PageView
          Container(
            height: 200,
            child: PageView(
              children: [
                NotificationCard(message: 'Notification 1'),
                NotificationCard(message: 'Notification 2'),
                NotificationCard(message: 'Notification 3'),
              ],
            ),
          ),
          // GridView with 8 cells in 2x2 layout
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return GridCell(index: index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class NotificationCard extends StatelessWidget {
  final String message;

  const NotificationCard({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class GridCell extends StatelessWidget {
  final int index;

  const GridCell({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(
          'Cell ${index + 1}',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
