// To parse this JSON data, do
//
//     final commentDataModel = commentDataModelFromJson(jsonString);

import 'dart:convert';

List<CommentDataModel> commentDataModelFromJson(String str) => List<CommentDataModel>.from(json.decode(str).map((x) => CommentDataModel.fromJson(x)));

String commentDataModelToJson(List<CommentDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CommentDataModel {
  CommentDataModel({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  int postId;
  int id;
  String name;
  String email;
  String body;

  factory CommentDataModel.fromJson(Map<String, dynamic> json) => CommentDataModel(
    postId: json["postId"],
    id: json["id"],
    name: json["name"],
    email: json["email"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "postId": postId,
    "id": id,
    "name": name,
    "email": email,
    "body": body,
  };
}
