import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Important'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  NotificationList(),
                  NotificationList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationList extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      'title': 'Neelu Verma has assigned a new assignment in Machine Learning',
      'subtitle': 'Today at 10:49 AM',
      'image': 'assets/download.png',
      'actionText': 'View Assignment',
    },
    {
      'title': 'Continue a lesson to maintain your 36 days streak',
      'subtitle': 'Today at 9:00 AM',
    },
    {
      'title': 'New Challenge Alert! Solve the latest coding challenge!',
      'subtitle': 'Wednesday at 10:49 AM',
      'image': 'assets/download.png',
      'actionText': 'View Assignment',
    },
    {
      'title': 'Congratulations Champion! You’ve made it to the leaderboard!',
      'subtitle': 'Aug 23 at 10:49 AM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return NotificationCard(notification: notification);
      },
    );
  }
}

class NotificationCard extends StatelessWidget {
  final Map<String, dynamic> notification;

  const NotificationCard({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (notification['image'] != null)
                  CircleAvatar(
                    backgroundImage: AssetImage(notification['image']),
                  ),
                if (notification['image'] != null) SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notification['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        notification['subtitle'],
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (notification['actionText'] != null) ...[
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  notification['actionText']!,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
