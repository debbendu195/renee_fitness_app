import 'package:flutter/material.dart';
import 'package:renee_flutter_app/utils/app_colors/app_colors.dart';
import 'package:renee_flutter_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for notifications
    final notifications = [
      NotificationItem(
        title: 'Sarah Johnson booked Conference Room A for tomorrow 2-4 PM. Payment confirmed.',
        time: 'Fri, 12 am',
        isHighlighted: true,
      ),
      NotificationItem(
        title: 'Mike Chen cancelled his booking for Meeting Room B. Refund processed automatically.',
        time: 'Fri, 12 am',
        isHighlighted: false,
      ),
      NotificationItem(
        title: 'Weekly payout of \$1,245.50 has been transferred to your account ending in 4567.',
        time: 'Fri, 12 am',
        isHighlighted: false,
      ),
      NotificationItem(
        title: 'New features added: Enhanced booking analytics and customer feedback system.',
        time: 'Fri, 12 am',
        isHighlighted: false,
      ),
      NotificationItem(
        title: 'Emma Davis moved her booking from today 3 PM to Friday 10 AM. No additional charges.',
        time: 'Fri, 12 am',
        isHighlighted: false,
      ),
    ];

    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Notification",),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return NotificationCard(notification: notification);
          },
        ),
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String time;
  final bool isHighlighted;

  NotificationItem({
    required this.title,
    required this.time,
    required this.isHighlighted,
  });
}

class NotificationCard extends StatelessWidget {
  final NotificationItem notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: notification.isHighlighted ? AppColors.primary : Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: notification.isHighlighted ? AppColors.primary : Colors.transparent,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            notification.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: notification.isHighlighted ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            notification.time,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
