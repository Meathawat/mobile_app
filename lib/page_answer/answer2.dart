import 'package:flutter/material.dart';

class Answer2 extends StatelessWidget {
  const Answer2 ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Social Media Post"),
          backgroundColor: Colors.orange,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const SocialMediaPost(),
      ),
    );
  }
}

class SocialMediaPost extends StatelessWidget {
  const SocialMediaPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Row for profile picture and user details
          Row(
            children: [
              // Profile picture
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              // User details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "User Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "5 minutes ago",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Post content
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[300],
          ),
          const SizedBox(height: 20),
          // Row for action buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Like"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Comment"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Share"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
