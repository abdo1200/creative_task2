import 'package:creative_task2/utils/utils.dart';
import 'package:flutter/material.dart';

class ReorderCard extends StatelessWidget {
  const ReorderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context),
      height: height(context) * .18,
      child: ListView.builder(
          reverse: true,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: width(context) * .7,
                height: height(context) * .17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: .2,
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              categories[index]['name'],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              categories[index]['type'],
                              style: const TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            categories[index]['image'],
                            fit: BoxFit.cover,
                            width: 50,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'إعادة الطلب',
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.restart_alt_outlined,
                          color: Colors.teal,
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

List categories = [
  {
    'name': 'مطعم هندى',
    'image': 'assets/images/delivery.jpg',
    'type': 'وجبة العائلة'
  },
  {
    'name': 'طلب السريع',
    'image': 'assets/images/delivery.jpg',
    'type': 'متجر السلام'
  },
];
