import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuyisi/kuyisi/domain/entities/choice.dart';
import 'package:kuyisi/kuyisi/domain/entities/question.dart';
import 'package:kuyisi/kuyisi/presentation/widgets/default_appbar.dart';

class QuestionWidget extends StatefulWidget {
  final QuestionType type;

  const QuestionWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late final GlobalKey<_ListPilihanWidgetState> _listPilihanKey;
  late final TextEditingController _soal;

  @override
  void initState() {
    super.initState();

    _listPilihanKey = GlobalKey<_ListPilihanWidgetState>();
    _soal = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _soal,
                decoration: const InputDecoration(
                  labelText: "Pertanyaan",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              const Text('Daftar Pilihan'),
              const SizedBox(height: 5),
              _ListPilihanWidget(
                key: _listPilihanKey,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          final question = Question(
            question: _soal.text,
          );

          final choices = _listPilihanKey.currentState?.getPilihans();

          Get.back(result: <dynamic>[question, choices]);
        },
      ),
    );
  }
}

class _ListPilihanWidget extends StatefulWidget {
  const _ListPilihanWidget({Key? key}) : super(key: key);

  @override
  _ListPilihanWidgetState createState() => _ListPilihanWidgetState();
}

class _ListPilihanWidgetState extends State<_ListPilihanWidget> {
  late List<TextEditingController> _pilihans;

  @override
  void initState() {
    super.initState();

    _pilihans = [];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ..._pilihans
            .map(
              (e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: e,
                  decoration: InputDecoration(
                    hintText: 'Pertanyaan',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          _pilihans.remove(e);
                        });
                      },
                    ),
                  ),
                ),
              ),
            )
            .toList(),
        TextButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _pilihans.add(TextEditingController());
            });
          },
        )
      ],
    );
  }

  List<Choice> getPilihans() {
    return _pilihans
        .map((e) => Choice(
              choice: e.text,
            ))
        .toList();
  }
}
