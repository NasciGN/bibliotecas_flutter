import 'package:flutter/material.dart';

class ContainerMenuButton extends StatefulWidget {
  const ContainerMenuButton(
      {Key? key, required this.RoutePageHomeScreen, required this.TextPage})
      : super(key: key);
  final String RoutePageHomeScreen;
  final String TextPage;

  @override
  State<ContainerMenuButton> createState() => _ContainerMenuButtonState();
}

class _ContainerMenuButtonState extends State<ContainerMenuButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/${widget.RoutePageHomeScreen}');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 40,
        width: 200,
        decoration: const BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Center(
            child: Text(
          '${widget.TextPage}',
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
