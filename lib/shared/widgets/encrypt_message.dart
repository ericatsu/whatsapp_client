import 'package:flutter/material.dart';
import 'package:whatsapp_client/shared/exports/exports.dart';

class EncryptMessage extends StatelessWidget {
  const EncryptMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.76,
      color: const Color(0xFFFFF3BF),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            encryMessage,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
