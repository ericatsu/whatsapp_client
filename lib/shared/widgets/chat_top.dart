import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_client/shared/constants/constants.dart';

class ChatTop extends StatelessWidget {
  final String chatname;
  final String personstatus;
  final VoidCallback chatback;
  final VoidCallback videocall;
  final VoidCallback phonecall;

  const ChatTop({
    super.key,
    required this.chatname,
    required this.personstatus,
    required this.chatback,
    required this.videocall,
    required this.phonecall,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Material(
      color: Palette.background,
      elevation: 2,
      child: SizedBox(
        height: height * 0.08,
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: chatback,
                child: const Icon(
                  CupertinoIcons.back,
                  size: 30,
                  color: Palette.iconColor,
                ),
              ),
              const Text(
                "12",
                style: TextStyle(
                    color: Palette.iconColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: width * 0.01,
              ),
              SizedBox(
                width: width * 0.11,
                height: height * 0.055,
                child: const CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://wallpapers.com/images/high/cool-profile-picture-2we7xmn0737hqgtu.webp"),
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    chatname,
                    style: const TextStyle(
                        color: Palette.primary,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    personstatus,
                    style:
                        const TextStyle(color: Palette.sectext, fontSize: 11),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: videocall,
                child: const Icon(
                  CupertinoIcons.video_camera,
                  size: 32,
                  color: Palette.iconColor,
                ),
              ),
              SizedBox(
                width: width * 0.03,
              ),
              InkWell(
                onTap: phonecall,
                child: const Icon(
                  CupertinoIcons.phone,
                  color: Palette.iconColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
