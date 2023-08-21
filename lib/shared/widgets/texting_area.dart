import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_client/shared/constants/constants.dart';

class TextingArea extends StatelessWidget {
  final TextEditingController chatController;
  final VoidCallback cameraOnpressed;
  final VoidCallback sendOnpressed;

  const TextingArea(
      {super.key,
      required this.chatController,
      required this.cameraOnpressed,
      required this.sendOnpressed});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * 0.115,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    CupertinoIcons.add,
                    color: Palette.iconColor,
                    size: 22,
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Expanded(
                  child: SizedBox(
                    height: height * 0.05,
                    child: TextField(
                      controller: chatController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: const Icon(
                          CupertinoIcons.add_circled,
                          color: Palette.iconColor,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                InkWell(
                  onTap: sendOnpressed,
                  child: const Icon(
                    CupertinoIcons.camera,
                    color: Palette.iconColor,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                InkWell(
                  onTap: sendOnpressed,
                  child: const Icon(
                    CupertinoIcons.mic,
                    color: Palette.iconColor,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
