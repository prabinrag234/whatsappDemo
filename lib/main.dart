import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hai',
        theme: ThemeData(
          primaryColor: Colors.pink,
        ),
        home: const NewApp());
  }
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatapp'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text('Person $index'),
              subtitle: Text('Message $index'),
              leading: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage(
                      'Assets/Images/flowers-5120x2880-white-rain-windows-12-25412.jpeg')),
              trailing: Text('1$index:00 PM'),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: 36,
        ),
      ),
    );
  }
}
