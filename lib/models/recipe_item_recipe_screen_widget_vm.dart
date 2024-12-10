// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RecipeItemRecipeScreenWidgetVm {
  final String recipeImageUrl;
  final String userImageUrl;
  final String recipeName;
  final String userNames;
  RecipeItemRecipeScreenWidgetVm({
    required this.recipeImageUrl,
    required this.userImageUrl,
    required this.recipeName,
    required this.userNames,
  });

  RecipeItemRecipeScreenWidgetVm copyWith({
    String? recipeImageUrl,
    String? userImageUrl,
    String? recipeName,
    String? userNames,
  }) {
    return RecipeItemRecipeScreenWidgetVm(
      recipeImageUrl: recipeImageUrl ?? this.recipeImageUrl,
      userImageUrl: userImageUrl ?? this.userImageUrl,
      recipeName: recipeName ?? this.recipeName,
      userNames: userNames ?? this.userNames,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recipeImageUrl': recipeImageUrl,
      'userImageUrl': userImageUrl,
      'recipeName': recipeName,
      'userNames': userNames,
    };
  }

  factory RecipeItemRecipeScreenWidgetVm.fromMap(Map<String, dynamic> map) {
    return RecipeItemRecipeScreenWidgetVm(
      recipeImageUrl: map['recipeImageUrl'] as String,
      userImageUrl: map['userImageUrl'] as String,
      recipeName: map['recipeName'] as String,
      userNames: map['userNames'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RecipeItemRecipeScreenWidgetVm.fromJson(String source) =>
      RecipeItemRecipeScreenWidgetVm.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RecipeItemRecipeScreenWidgetVm(recipeImageUrl: $recipeImageUrl, userImageUrl: $userImageUrl, recipeName: $recipeName, userNames: $userNames)';
  }

  @override
  bool operator ==(covariant RecipeItemRecipeScreenWidgetVm other) {
    if (identical(this, other)) return true;

    return other.recipeImageUrl == recipeImageUrl &&
        other.userImageUrl == userImageUrl &&
        other.recipeName == recipeName &&
        other.userNames == userNames;
  }

  @override
  int get hashCode {
    return recipeImageUrl.hashCode ^
        userImageUrl.hashCode ^
        recipeName.hashCode ^
        userNames.hashCode;
  }
}
