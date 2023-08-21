import 'package:flutter/material.dart';
import 'package:whatsapp_client/shared/exports/exports.dart';
import 'package:whatsapp_client/shared/widgets/texting_area.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.bgImage),
            fit: BoxFit.cover,
          ),
        ),
          child: Column(
            children: [
              ChatTop(
                chatback: () {},
                chatname: 'Name Name',
                personstatus: 'typing...',
                phonecall: () {},
                videocall: () {},
              ),
              Container(
                
              ),
              Container(
                color: Palette.background,
                child: Row(
                  children: [
                    Expanded(
                        child: TextingArea(
                      cameraOnpressed: () {},
                      sendOnpressed: () {},
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
