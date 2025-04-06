import 'package:flutter/material.dart';

class FoldersContainer extends StatelessWidget {
  const FoldersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Text('Folders'),
      ),
    );
  }
}
