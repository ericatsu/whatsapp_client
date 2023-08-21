import 'package:flutter/material.dart';

class TimingCard extends StatelessWidget {
  final String timing;
  const TimingCard({super.key, required this.timing});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: width * 0.2,
        height: height * 0.03,
        decoration: BoxDecoration(
          color: const Color(0xFFDBDFEB),
          borderRadius: BorderRadius.circular(15),
        ),
        child:  Center(
          child: Text(
            timing,
            style: const TextStyle(
                color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
