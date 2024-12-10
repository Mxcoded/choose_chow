// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CommentVm {
  final String imageUrl;
  final String comment;
  final String date;
  final String name;
  final int? numberOfReplies;
  final int? numberOfLike;
  final bool isComment;
  final bool? isForMultipleComments;
  CommentVm({
    required this.imageUrl,
    required this.comment,
    required this.date,
    required this.name,
    this.numberOfReplies,
    this.numberOfLike,
    this.isComment = true,
    this.isForMultipleComments,
  });

  CommentVm copyWith({
    String? imageUrl,
    String? comment,
    String? date,
    String? name,
    int? numberOfReplies,
    int? numberOfLike,
    bool? isComment,
    bool? isForMultipleComments,
  }) {
    return CommentVm(
      imageUrl: imageUrl ?? this.imageUrl,
      comment: comment ?? this.comment,
      date: date ?? this.date,
      name: name ?? this.name,
      numberOfReplies: numberOfReplies ?? this.numberOfReplies,
      numberOfLike: numberOfLike ?? this.numberOfLike,
      isComment: isComment ?? this.isComment,
      isForMultipleComments:
          isForMultipleComments ?? this.isForMultipleComments,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'comment': comment,
      'date': date,
      'name': name,
      'numberOfReplies': numberOfReplies,
      'numberOfLike': numberOfLike,
      'isComment': isComment,
      'isForMultipleComments': isForMultipleComments,
    };
  }

  factory CommentVm.fromMap(Map<String, dynamic> map) {
    return CommentVm(
      imageUrl: map['imageUrl'] as String,
      comment: map['comment'] as String,
      date: map['date'] as String,
      name: map['name'] as String,
      numberOfReplies:
          map['numberOfReplies'] != null ? map['numberOfReplies'] as int : null,
      numberOfLike:
          map['numberOfLike'] != null ? map['numberOfLike'] as int : null,
      isComment: map['isComment'] as bool,
      isForMultipleComments: map['isForMultipleComments'] != null
          ? map['isForMultipleComments'] as bool
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CommentVm.fromJson(String source) =>
      CommentVm.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CommentVm(imageUrl: $imageUrl, comment: $comment, date: $date, name: $name, numberOfReplies: $numberOfReplies, numberOfLike: $numberOfLike, isComment: $isComment, isForMultipleComments: $isForMultipleComments)';
  }

  @override
  bool operator ==(covariant CommentVm other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl &&
        other.comment == comment &&
        other.date == date &&
        other.name == name &&
        other.numberOfReplies == numberOfReplies &&
        other.numberOfLike == numberOfLike &&
        other.isComment == isComment &&
        other.isForMultipleComments == isForMultipleComments;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        comment.hashCode ^
        date.hashCode ^
        name.hashCode ^
        numberOfReplies.hashCode ^
        numberOfLike.hashCode ^
        isComment.hashCode ^
        isForMultipleComments.hashCode;
  }
}
