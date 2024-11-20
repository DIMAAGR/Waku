enum LessonType {
  kanjiCopy,
  dictionaryMemorize,
  matchExercise,
  setenceBuilding,
  kanjiReview;

  LessonType fromString(String type) {
    switch (type) {
      case 'kanji_copy':
        return LessonType.kanjiCopy;
      case 'dictionary_memorize':
        return LessonType.dictionaryMemorize;
      case 'match_exerciser':
        return LessonType.matchExercise;
      case 'setence_building':
        return LessonType.setenceBuilding;
      case 'kanji_review':
        return LessonType.kanjiReview;
      default:
        throw Exception('Unknown Leason Type');
    }
  }
}

class LessonEntity {
  final LessonType Type;
  final String title;
  final List<LessonContent> content;

  LessonEntity({
    required this.content,
    required this.Type,
    required this.title,
  });

  factory LessonEntity.fromJson(Map<String, dynamic> json) {
    return LessonEntity(
      content: json['content'].map((e) => LessonContent.fromJson(e)).toList(),
      Type: json['type'],
      title: json['title'],
    );
  }
}

class LessonContent {
  final String? kanji;
  final String? furigana;
  final String? meaning;
  final String? word;
  final String? explanation;
  LessonContent({
    this.furigana,
    this.kanji,
    this.meaning,
    this.word,
    this.explanation,
  });

  factory LessonContent.fromJson(Map<String, dynamic> json) {
    return LessonContent(
      kanji: json['kanji'],
      furigana: json['furigana'],
      meaning: json['meaning'],
      word: json['word'],
      explanation: json['explanation'],
    );
  }
}



/*
    lesson_type: kanjiCopy
    lesson_content : [
        {
        kanji : "",
        furigana: "",
        meaning: "",
        },
    ],
 */

/*
    lesson_type: matchExercise,
    lesson_content: [
        {
        word: "",
        meaning: "",
        },
        {
        word: "",
        meaning: "",
        },
        {
        word: "",
        meaning: "",
        }
    ],

 */