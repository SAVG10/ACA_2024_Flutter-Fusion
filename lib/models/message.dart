// lib/models/message.dart
class Message {
  final String id;
  final String senderId;
  final String receiverId;
  final String text;
  final DateTime timestamp;

  Message({required this.id, required this.senderId, required this.receiverId, required this.text, required this.timestamp});
}
