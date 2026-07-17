class Message {
  final String sender;
  final String preview;
  final String time;
  final bool unread;

  const Message({
    required this.sender,
    required this.preview,
    required this.time,
    required this.unread,
  });
}
