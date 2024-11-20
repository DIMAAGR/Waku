import 'package:waku/src/core/entities/activity_entity.dart';

class CaptionEntity {
  final String captionTitle;
  final List<ActivityEntity> activities;

  CaptionEntity({
    required this.captionTitle,
    required this.activities,
  });

  factory CaptionEntity.fromJson(Map<String, dynamic> json) {
    return CaptionEntity(captionTitle: json['title'], activities: json['activities'].map((e) => ActivityEntity.fromJson(e)).toList());
  }
}
