import 'package:belajar_flutter_batch_2/models/chat_room.dart';
import 'package:flutter/material.dart';

class TelegramPage extends StatefulWidget {
  const TelegramPage({super.key});

  @override
  State<TelegramPage> createState() => _TelegramPageState();
}

class _TelegramPageState extends State<TelegramPage> {

  List<ChatRoom> data = [
    ChatRoom(
      name: 'Press Room',
      initial: 'PR',
      lastMessage: 'Helloooo guys',
      time: '17:00'
    ),
    ChatRoom(
      name: 'Lionel Messi',
      avatar: 'images/lionel-messi.jpeg',
      initial: 'LM',
      lastMessage: 'Hollaaaa',
      time: '13:00'
    ),
    ChatRoom(
      name: 'C Ronaldo',
      initial: 'CR',
      lastMessage: 'Siuuuuuu',
      time: '10:00'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      floatingActionButton: _buildFAB(),
      drawer: _buildDrawer(),
      body: ListView.separated(
        itemCount: data.length,
        separatorBuilder: (_, __) => const Divider(), 
        itemBuilder: (context, index) {
          final chatRoom = data[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: chatRoom.avatar != null ? DecorationImage(
                    image: AssetImage(chatRoom.avatar!),
                    fit: BoxFit.cover,
                  ) : null
                ),
                child: chatRoom.avatar == null 
                    ? Center(
                        child: Text(
                          chatRoom.initial,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ) 
                    : null,
              ),
            ),
            title: Text(chatRoom.name),
            subtitle: Text(chatRoom.lastMessage),
            trailing: Text(
              chatRoom.time,
              style: const TextStyle(
                color: Colors.grey
              ),
            ),
          );
        }, 
      ),
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage('images/bromo.jpg'),
                fit: BoxFit.cover,
              )
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'images/lionel-messi.jpeg',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 12,),
                    const Text(
                      'Dan Ashford',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    const Text(
                      '+1 (042) 911 05',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              )
            ),
          ),
          const ListTile(
            leading: Icon(Icons.group),
            title: Text('New Group'),
          ),
          const ListTile(
            leading: Icon(Icons.lock),
            title: Text('New Secret Chat'),
          ),
          const ListTile(
            leading: Icon(Icons.campaign),
            title: Text('New Channel'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contacts'),
          ),
          const ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Invite Friends'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          const ListTile(
            leading: Icon(Icons.help),
            title: Text('Telegram FAQ'),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromRGBO(91, 117, 153, 1),
      title: const Text(
        'Telegram',
        style: TextStyle(
          color: Colors.white
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.search),
          color: Colors.white,
        )
      ],
    );
  }

  Widget _buildFAB() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.edit),
    );
  }
}