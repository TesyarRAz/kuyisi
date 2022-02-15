import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuyisi/kuyisi/presentation/question_bank/create_screen.dart';

class QuestionBankScreen extends StatefulWidget {
  const QuestionBankScreen({Key? key}) : super(key: key);

  @override
  _QuestionBankScreenState createState() => _QuestionBankScreenState();
}

class _QuestionBankScreenState extends State<QuestionBankScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: max(MediaQuery.of(context).size.width ~/ 150, 1),
      children: [
        Card(
          child: InkWell(
            onTap: () {
              Get.to(() => const CreateScreen());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.add),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
