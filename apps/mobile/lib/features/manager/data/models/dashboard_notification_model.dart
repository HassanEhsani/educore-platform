import '../../domain/entities/dashboard_notification.dart';

class DashboardNotificationModel extends DashboardNotification {
  const DashboardNotificationModel({
    required super.id,
    required super.title,
    required super.message,
    required super.createdAt,
    required super.type,
    required super.isRead,
  });

  factory DashboardNotificationModel.fromJson(Map<String, dynamic> json) {
    return DashboardNotificationModel(
      id: json['id'] as String? ?? '',

      title: json['title'] as String? ?? '',

      message: json['message'] as String? ?? '',

      createdAt: DateTime.parse(json['createdAt'] as String),

      type: NotificationType.values.firstWhere(
        (item) => item.name == json['type'],
        orElse: () => NotificationType.general,
      ),

      isRead: json['isRead'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'message': message,
      'createdAt': createdAt.toIso8601String(),
      'type': type.name,
      'isRead': isRead,
    };
  }
}
