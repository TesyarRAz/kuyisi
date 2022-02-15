import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuyisi/kuyisi/domain/entities/choice.dart';
import 'package:kuyisi/kuyisi/domain/entities/question.dart';
import 'package:kuyisi/kuyisi/infrastucture/models/question_model.dart';
import 'package:kuyisi/kuyisi/presentation/question_bank/widgets/question_widget.dart';
import 'package:package_info_plus/package_info_plus.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _packageInfo = Get.find<PackageInfo>();

  late final List<QuestionModel> _questions;

  @override
  void initState() {
    super.initState();

    _questions = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          titleSpacing: 0,
          automaticallyImplyLeading: true,
          title: Text(_packageInfo.appName),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: "Nama Tes",
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Daftar Pertanyaan'),
              const SizedBox(height: 20),
              ListView(
                shrinkWrap: true,
                children: [
                  ..._questions
                      .map(
                        (e) => ListTile(
                          title: Text(e.question?.question ?? ''),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                _questions.remove(e);
                              });
                            },
                          ),
                          selectedColor: Colors.transparent,
                          onTap: () {},
                        ),
                      )
                      .toList(),
                  _AddButton(onAdded: (question, choices) {
                    setState(() {
                      _questions.add(QuestionModel(
                        question: question,
                        choices: choices,
                      ));
                    });
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final Function(Question?, List<Choice>?) onAdded;

  const _AddButton({
    Key? key,
    required this.onAdded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: const Text('Jenis Pertanyaan'),
              children: [
                SimpleDialogOption(
                  child: const Text('Text'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    final result = await Get.to<List<dynamic>>(
                      () => const QuestionWidget(
                        type: QuestionType.text,
                      ),
                    );

                    if (result != null) {
                      onAdded(result[0], result[1]);
                    }
                  },
                ),
                SimpleDialogOption(
                  child: const Text('Radio'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    final result = await Get.to<List<dynamic>>(
                      () => const QuestionWidget(
                        type: QuestionType.radio,
                      ),
                    );

                    if (result != null) {
                      onAdded(result[0], result[1]);
                    }
                  },
                )
              ],
            );
          },
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
