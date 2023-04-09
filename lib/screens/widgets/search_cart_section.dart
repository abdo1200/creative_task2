import 'package:flutter/material.dart';

class SearchCartSection extends StatelessWidget {
  const SearchCartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.1),
                    borderRadius: BorderRadius.circular(5)),
                margin: const EdgeInsets.only(right: 5),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'ج',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          '300',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                    const Badge(
                        label: Text('50'),
                        child: Icon(Icons.shopping_cart_outlined, size: 13)),
                  ],
                ),
              )),
          Flexible(
            flex: 3,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.grey.withOpacity(.2),
                  contentPadding: const EdgeInsets.all(0),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  hintText: 'ابحث عن وجبة أو مطعم',
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
