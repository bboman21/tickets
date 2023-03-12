import 'package:flutter/cupertino.dart';

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //create a container
      child: Row(),
    );
  }
}

// function to get current date
DateTime getCurrentDate() {
  var now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(now);
  return DateTime.parse(formattedDate);
}
