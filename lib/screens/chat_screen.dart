import 'package:flutter/material.dart';
import 'package:whatsapp_client/shared/exports/exports.dart';
import 'package:whatsapp_client/shared/widgets/encrypt_message.dart';
import 'package:whatsapp_client/shared/widgets/message_bubble.dart';
import 'package:whatsapp_client/shared/widgets/message_type.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController scrollController = ScrollController();

  final TextEditingController messageController = TextEditingController();

  List<Message> messages = [
    Message(content: "Hello there!", isSender: false),
    Message(content: "Hi! How can I help you?", isSender: true),
    Message(content: "I have a question about the project.", isSender: false),
    Message(
        content: "Sure, I'd be happy to help. What's your question?",
        isSender: true),
  ];

  void sendOnpressed() {
    final String newMessage = messageController.text.trim();
    if (newMessage.isNotEmpty) {
      setState(() {
        messages.add(Message(content: newMessage, isSender: true));
      });
      messageController.clear(); // Clear the text field
      // Optionally, you can scroll to the bottom of the ListView
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void dispose() {
    messageController.dispose(); // Dispose the TextEditingController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
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
                    const TimingCard(
                      timing: 'Today',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const EncryptMessage(),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const MessageType(),
                    SizedBox(
                      height: height * 0.016,
                    ),
                    Expanded(
                      child: ListView.builder(
                          controller: scrollController,
                          itemCount: messages.length,
                          itemBuilder: (context, index) {
                            final message = messages[index];
                            final isUserMessage = message.isSender == 'Eric';
                            final senderName =
                                message.isSender ? 'You' : 'Name Name';
                            return MessageBubble(
                              senderName: senderName,
                              chatMessage: message.content,
                              messageTime:
                                  DateTime.fromMillisecondsSinceEpoch(0),
                              senderColor: isUserMessage
                                  ? Palette.secondary
                                  : const Color.fromARGB(141, 33, 149, 243),
                              senderAlignment: isUserMessage
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              timeAlignment: isUserMessage
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              bubbleAlignment: isUserMessage
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                            );
                          }),
                    ),
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
                        sendOnpressed: sendOnpressed,
                        chatController: messageController,
                      ),
                    ),
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

class Message {
  final String content;
  final bool isSender;

  Message({
    required this.content,
    required this.isSender,
  });
}
