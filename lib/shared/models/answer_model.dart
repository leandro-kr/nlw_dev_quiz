import 'dart:convert';

class AnswerModel {
  final String title;
  final bool isRight;
  final bool isSelected;

  AnswerModel(
      {required this.title, this.isRight = false, this.isSelected = false});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
      'isSelected': isSelected,
    };
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      title: map['title'],
      isRight: map['isRight'] ?? false,
      isSelected: map['isSelected'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromJson(String source) =>
      AnswerModel.fromMap(json.decode(source));
}
