// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String? docId;
  final String title;
  final String description;

  TodoModel({
    this.docId,
    required this.title, 
    required this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docId': docId,
      'title': title,
      'description': description,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      docId: map['docId'] != null ? map['docId'] as String : null,
      title: map['title'] as String,
      description: map['description'] as String,
    );
  }

  factory TodoModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    return TodoModel(
      docId: doc.id,
      title: doc['title'],
      description: doc['description'],
    );
  }
}
