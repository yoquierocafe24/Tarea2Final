import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF075E54), 
          title: const Text("WhatsApp", style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {
                


              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {
                


              },
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.camera_alt),
            Chats(),
            Estados(),
            Center(child: Text("Calls", style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}

class Estados extends StatelessWidget {
  const Estados({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: const Text('Estado'),
          subtitle: const Text('Tap para añadir un estado'),
          onTap: () {
            
            
            
          },
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            "Recientes",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 118, 4, 131),
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text('Jackeline Uni'),
          subtitle: Text('Hace 10 minutos'),
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 76, 9, 98),
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text('Miah George'),
          subtitle: Text('Hace 30 minutos'),
        ),
      ],
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _cadaChat("Miah George", "no se que decir ...", Icons.person),
        _cadaChat("Jackeline Uni", "Proba ahora...", Icons.person),
        _cadaChat("Emily", "No se", Icons.person),
        _cadaChat("Alys", "me esta funando", Icons.person)
      ],
    );
  }

  Widget _cadaChat(String name, String message, IconData icon) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: [
          Icon(Icons.done_all, color: Colors.blue, size: 16),
          SizedBox(width: 5), // Espacio entre el icono y el texto
          Text(message),
        ],
      ),
      trailing: Text("Yesterday"),
    );
  }
}

