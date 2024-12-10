// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Category {
  final int id;
  final String labelName;
  final String image;
  Category({
    required this.id,
    required this.labelName,
    required this.image,
  });

  Category copyWith({
    int? id,
    String? labelName,
    String? image,
  }) {
    return Category(
      id: id ?? this.id,
      labelName: labelName ?? this.labelName,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'labelName': labelName,
      'image': image,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as int,
      labelName: map['labelName'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Category(id: $id, labelName: $labelName, image: $image)';

  @override
  bool operator ==(covariant Category other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.labelName == labelName &&
        other.image == image;
  }

  @override
  int get hashCode => id.hashCode ^ labelName.hashCode ^ image.hashCode;
}
