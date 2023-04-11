import 'package:flutter/material.dart';

class Blog {
  Blog(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.writer,
      required this.writerImageUrl,
      required this.date,
      required this.content});
  final String id;
  final String title;
  final String imageUrl;
  final String writer;
  final String writerImageUrl;
  final String date;
  final String content;
}
