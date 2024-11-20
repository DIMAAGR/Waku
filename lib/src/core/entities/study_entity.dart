import 'caption_entity.dart';

class StudyEntity {
  final String studyTitle;
  final int lessonsQuantity;
  final List<CaptionEntity> captions;

  StudyEntity({
    required this.studyTitle,
    required this.captions,
    required this.lessonsQuantity,
  });

  factory StudyEntity.fromJson(Map<String, dynamic> json) {
    return StudyEntity(
      studyTitle: json['title'],
      captions: json['captions'].map((e) => CaptionEntity.fromJson(e)).toList(),
      lessonsQuantity: json['lessons_quantity'],
    );
  }
}
