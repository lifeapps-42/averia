import 'package:flutter/material.dart';

class ShotIconButton extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;

  const ShotIconButton({Key? key, required this.icon, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(Size.square(40)),
          child: TextButton(
            
        onPressed: onTap, child: Icon(icon)),
    );
  }
}
