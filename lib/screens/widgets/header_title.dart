import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  final String title;
  final String? second;
  const HeaderTitle({super.key, required this.title, this.second});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          second != null
              ? Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.teal,
                      size: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      second!,
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              : Container(),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          )
        ],
      ),
    );
  }
}
