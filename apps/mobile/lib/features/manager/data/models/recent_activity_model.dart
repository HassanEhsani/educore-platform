import '../../domain/entities/recent_activity.dart';

class RecentActivityModel extends RecentActivity {
  const RecentActivityModel({
    required super.id,
    required super.title,
    required super.description,
    required super.type,
    required super.createdAt,
  });

  factory RecentActivityModel.fromJson(Map<String, dynamic> json) {
    return RecentActivityModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: ActivityType.values.firstWhere(
        (type) => type.name == json['type'],
        orElse: () => ActivityType.system,
      ),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'type': type.name,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
