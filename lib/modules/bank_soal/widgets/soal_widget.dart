part of bank_soal;

class SoalWidget extends StatelessWidget {
  final Soal soal;
  final _text = TextEditingController();

  SoalWidget({Key? key, required this.soal}) : super(key: key) {
    _text.text = soal.soal ?? '';

    _text.addListener(() {
      soal.soal = _text.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _text,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        Column()
      ],
    );
  }
}
