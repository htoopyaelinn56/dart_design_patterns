import 'dart:convert';

class Book {
  final String title;
  final String authorName;

  Book({required this.title, required this.authorName});

  @override
  String toString() {
    return 'Book(title:$title, authorName:$authorName)';
  }
}