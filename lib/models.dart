import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String id;
  final String name;

  UserModel({required this.id, required this.name});

  Map<String, dynamic> toMap(){
    return{
      'name': name
    };
  }
  factory UserModel.fromMap(String id, Map<String, dynamic> map){
    return UserModel(
      id: id,
      name: map['name']
    );
  }
}
class JournalEntry{
  final String id;
  final String userId;
  final String title;
  final String content;
  final DateTime date;
  final String? mood;
  final String? mediaUrl;
  final bool isPasswordProtected;

  JournalEntry({
    required this.id,
    required this.userId,
    required this.title,
    required this.content,
    required this.date,
    this.mood,
    this.mediaUrl,
    this.isPasswordProtected = false,
  });

  Map<String, dynamic> toMap(){
    return{
      'userId': userId,
      'title': title,
      'content': content,
      'date': Timestamp.fromDate(date),
      'mood': mood,
      'mediaUrl': mediaUrl,
      'isPasswordProtected': isPasswordProtected,
    };
  }
  factory JournalEntry.fromMap(String id, Map<String, dynamic> map){
    return JournalEntry(
        id: id,
        userId: map['userId'],
        title: map['title'],
        content: map['content'],
        date: (map['date'] as Timestamp).toDate(),
        mood: map['mood'],
        mediaUrl: map['mediaUrl'],
        isPasswordProtected: map['isPasswordProtected'] ?? false,
    );
  }

}
