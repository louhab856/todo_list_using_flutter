import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  final String? name;
  final String? avatar;

  Welcome({this.name, this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Hi ${name ?? ''}', // Interpolating name with fallback to empty string if null
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Image.asset('assets/icons/hand-emoji.png'),
              ),
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage(avatar ?? ''), // Using avatar with fallback to empty string if null
          ),
        ],
      ),
    );
  }
}
