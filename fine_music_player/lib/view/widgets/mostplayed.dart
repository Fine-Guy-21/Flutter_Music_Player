import 'package:flutter/material.dart';

class MostplayedContainer extends StatelessWidget {
  const MostplayedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Text('Most Played'),
      ),
    );
  }
}
