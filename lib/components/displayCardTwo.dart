import 'package:flutter/material.dart';

class DisplayCardTwo extends StatefulWidget {
  const DisplayCardTwo({Key? key, required this.vogue, required this.index})
      : super(key: key);

  final vogue;
  final index;

  @override
  _DisplayCardTwoState createState() => _DisplayCardTwoState();
}

class _DisplayCardTwoState extends State<DisplayCardTwo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IndexedStack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: size.width * 0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.vogue.images[widget.index]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(widget.vogue.pname),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: size.width * 0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.vogue.images[widget.index]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(widget.vogue.pname),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: size.width * 0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.vogue.images[widget.index]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(widget.vogue.pname),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
