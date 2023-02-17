import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Geralt of Rivia'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.red[100],
              child: const Text('GR'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ab728018-e315-44d3-88f3-12a0045cc5f3/d8p1wqo-3b4d78e8-db49-4a66-99c1-882a64c82be0.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2FiNzI4MDE4LWUzMTUtNDRkMy04OGYzLTEyYTAwNDVjYzVmM1wvZDhwMXdxby0zYjRkNzhlOC1kYjQ5LTRhNjYtOTljMS04ODJhNjRjODJiZTAuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.hpCR1hmGGyWhO3nlffhbmWhrJ91gBbFiW2v11FgFYv8'),
        ),
      ),
    );
  }
}
