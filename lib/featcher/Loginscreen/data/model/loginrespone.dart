class Loginrespone {
  String? displayName;
  String? email;
  String? token;
  String? userRole;

  Loginrespone({this.displayName, this.email, this.token, this.userRole});

  factory Loginrespone.fromJson(Map<String, dynamic> json) => Loginrespone(
        displayName: json['displayName'] as String?,
        email: json['email'] as String?,
        token: json['token'] as String?,
        userRole: json['userRole'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'displayName': displayName,
        'email': email,
        'token': token,
        'userRole': userRole,
      };
}
