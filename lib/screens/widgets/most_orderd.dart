import 'package:creative_task2/utils/utils.dart';
import 'package:flutter/material.dart';

class MostOrdered extends StatelessWidget {
  const MostOrdered({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context),
      height: height(context) * .32,
      child: ListView.builder(
          reverse: true,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        categories[index]['image'],
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              categories[index]['name'],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              categories[index]['type'],
                              style: const TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              '4.5',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.star_border_rounded,
                              size: 13,
                            ),
                            Text(' • '),
                            Text(
                              'ج',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '15',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.motorcycle,
                              size: 13,
                            ),
                            Text(' • '),
                            Text(
                              'دقيقة',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '45',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.av_timer_outlined,
                              size: 13,
                            ),
                          ]),
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
    'name': 'كوك دور',
    'image': 'assets/images/cook.png',
    'type': 'برجر . فرايد تشيكن'
  },
  {'name': 'كنتاكي', 'image': 'assets/images/kfc.jpg', 'type': 'متجر السلام'},
  {
    'name': 'ماكدونالد',
    'image': 'assets/images/mac.png',
    'type': 'برجر . فرايد تشيكن'
  },
];
