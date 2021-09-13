import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  const DisplayCard({Key? key, required this.deal, required this.index}) : super(key: key);

  final deal;
  final index;

  @override
  Widget build(BuildContext context) {
    var imgData = deal.images[0];
    Size size = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.only(right: 0, bottom: 10),
      child: Container(
        height: size.height * 0.30,
        width: size.width * 0.43,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imgData),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Text(deal.pname),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    deal.price,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
