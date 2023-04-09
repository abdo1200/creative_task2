import 'package:flutter/material.dart';

class CitySection extends StatelessWidget {
  const CitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'تغيير',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          Row(
            children: const [
              Text('طنطا , منطقة الإستاد'),
              Icon(Icons.location_on_outlined),
            ],
          )
        ],
      ),
    );
  }
}
