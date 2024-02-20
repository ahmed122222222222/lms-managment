class QuizeModel {
  String quizId;
  String? title;
  String? startDate;
  String? endDate;
  String? status;
  DateTime? createdAt;
  dynamic questions;

  QuizeModel({
   required this.quizId,
    this.title,
    this.startDate,
    this.endDate,
    this.status,
    this.createdAt,
    this.questions,
  });

  factory QuizeModel.fromJson(Map<String, dynamic> json) {
    return QuizeModel(
      quizId: json['quizId'],
      title: json['title'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      status: json['status'],
      createdAt: json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      questions: json['questions'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'quizId': quizId,
      'title': title,
      'startDate': startDate,
      'endDate': endDate,
      'status': status,
      'createdAt': createdAt?.toIso8601String(),
      'questions': questions,
    };
  }}