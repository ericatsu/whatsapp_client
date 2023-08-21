import 'package:flutter/material.dart';
import 'package:whatsapp_client/shared/exports/exports.dart';

class MessageType extends StatelessWidget {
  const MessageType({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.76,
      color: const Color(0xFFEDF9F5),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          messageType,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
      ),
    );
  }
}