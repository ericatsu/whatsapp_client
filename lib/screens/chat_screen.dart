import 'package:flutter/material.dart';
import 'package:whatsapp_client/shared/exports/exports.dart';
import 'package:whatsapp_client/shared/widgets/encrypt_message.dart';
import 'package:whatsapp_client/shared/widgets/message_type.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
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
              SizedBox(
                height: height * 0.763,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const TimingCard(timing: 'Today',),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const EncryptMessage(),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const MessageType()
                  ],
                ),
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
