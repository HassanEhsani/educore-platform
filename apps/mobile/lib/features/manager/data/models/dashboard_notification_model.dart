import '../../domain/entities/dashboard_notification.dart';

class DashboardNotificationModel extends DashboardNotification {
  const DashboardNotificationModel({
    required super.id,
    required super.title,
    required super.message,
    required super.type,
    required super.createdAt,
    required super.isRead,
  });

  factory DashboardNotificationModel.fromJson(Map<String, dynamic> json) {
    return DashboardNotificationModel(
      id: json['id'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      type: NotificationType.values.firstWhere(
        (type) => type.name == json['type'],
        orElse: () => NotificationType.system,
      ),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isRead: json['isRead'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'message': message,
      'type': type.name,
      'createdAt': createdAt.toIso8601String(),
      'isRead': isRead,
    };
  }
}
