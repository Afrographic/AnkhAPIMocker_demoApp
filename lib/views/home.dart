// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ankh_api_mocker/views/kemet_post/views/kemet_post_renderer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              color: Colors.grey.withOpacity(0.1),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Text(
                    "Welcome to",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Kemet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: KemetRenderer(),
            )
          ],
        ),
      ),
    );
  }
}
