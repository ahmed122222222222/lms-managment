class MatieralesModel {
  String? fileName;
  String? lectureName;
  String? semesterName;
  String? filePath;

  MatieralesModel({
    this.fileName,
    this.lectureName,
    this.semesterName,
    this.filePath,
  });

  factory MatieralesModel.fromJson(Map<String, dynamic> json) {
    return MatieralesModel(
      fileName: json['fileName'] as String?,
      lectureName: json['lectureName'] as String?,
      semesterName: json['semesterName'] as String?,
      filePath: json['filePath'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'fileName': fileName,
        'lectureName': lectureName,
        'semesterName': semesterName,
        'filePath': filePath,
      };
}
