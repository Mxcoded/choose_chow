// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NotificationVm {
  final String user;
  final String imageUrl;
  final String time;
  final String postName;
  NotificationVm({
    required this.user,
    required this.imageUrl,
    required this.time,
    required this.postName,
  });

  NotificationVm copyWith({
    String? user,
    String? imageUrl,
    String? time,
    String? postName,
  }) {
    return NotificationVm(
      user: user ?? this.user,
      imageUrl: imageUrl ?? this.imageUrl,
      time: time ?? this.time,
      postName: postName ?? this.postName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user,
      'imageUrl': imageUrl,
      'time': time,
      'postName': postName,
    };
  }

  factory NotificationVm.fromMap(Map<String, dynamic> map) {
    return NotificationVm(
      user: map['user'] as String,
      imageUrl: map['imageUrl'] as String,
      time: map['time'] as String,
      postName: map['postName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificationVm.fromJson(String source) =>
      NotificationVm.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NotificationVm(user: $user, imageUrl: $imageUrl, time: $time, postName: $postName)';
  }

  @override
  bool operator ==(covariant NotificationVm other) {
    if (identical(this, other)) return true;

    return other.user == user &&
        other.imageUrl == imageUrl &&
        other.time == time &&
        other.postName == postName;
  }

  @override
  int get hashCode {
    return user.hashCode ^
        imageUrl.hashCode ^
        time.hashCode ^
        postName.hashCode;
  }
}
