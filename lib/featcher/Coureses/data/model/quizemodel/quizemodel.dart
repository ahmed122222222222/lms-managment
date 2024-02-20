class Quizemodel {
  String? quizId;
  String? title;
  String? startDate;
  String? endDate;
  String? status;
  DateTime? createdAt;
  dynamic questions;

  Quizemodel({
    this.quizId,
    this.title,
    this.startDate,
    this.endDate,
    this.status,
    this.createdAt,
    this.questions,
  });

  factory Quizemodel.fromJson(Map<String, dynamic> json) => Quizemodel(
        quizId: json['quizId'] as String?,
        title: json['title'] as String?,
        startDate: json['startDate'] as String?,
        endDate: json['endDate'] as String?,
        status: json['status'] as String?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        questions: json['questions'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'quizId': quizId,
        'title': title,
        'startDate': startDate,
        'endDate': endDate,
        'status': status,
        'createdAt': createdAt?.toIso8601String(),
        'questions': questions,
      };
}
