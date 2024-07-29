class ChatRoom {

  String name;
  String? avatar;
  String initial;
  String lastMessage;
  String time;

  ChatRoom({
    required this.name,
    this.avatar,
    required this.initial,
    required this.lastMessage,
    required this.time,
  });

}