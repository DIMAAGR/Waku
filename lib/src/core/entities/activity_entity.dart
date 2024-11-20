import 'package:waku/src/core/entities/lesson_entity.dart';

class ActivityEntity {
  List<LessonEntity> lessons;

  ActivityEntity({required this.lessons});

  factory ActivityEntity.fromJson(Map<String, dynamic> json) {
    return ActivityEntity(lessons: json['activities'].map((e) => LessonEntity.fromJson(e)).toList());
  }
}
