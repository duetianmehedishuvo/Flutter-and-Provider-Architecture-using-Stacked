// To parse this JSON data, do
//
//     final postDataModel = postDataModelFromJson(jsonString);

import 'dart:convert';

List<PostDataModel> postDataModelFromJson(String str) => List<PostDataModel>.from(json.decode(str).map((x) => PostDataModel.fromJson(x)));

String postDataModelToJson(List<PostDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostDataModel {
  PostDataModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory PostDataModel.fromJson(Map<String, dynamic> json) => PostDataModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
