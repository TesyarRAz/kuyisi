part of bank_soal;

class SoalWidget extends StatelessWidget {
  final Soal soal;
  final _text = TextEditingController();
  final _collapse = true.obs;

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
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              icon: Obx(
                () => _collapse.value
                    ? const Icon(Icons.arrow_downward)
                    : const Icon(Icons.arrow_back),
              ),
              onPressed: () {
                _collapse.toggle();
              },
            ),
          ),
        ),
        Obx(
          () => Visibility(
            child: _ListPilihanWidget(
              pilihans: soal.pilihans!,
            ),
            visible: _collapse.isFalse,
          ),
        ),
      ],
    );
  }
}

class _ListPilihanWidget extends StatefulWidget {
  final List<Pilihan> pilihans;

  const _ListPilihanWidget({
    Key? key,
    required this.pilihans,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListPilihanWidgetState();
}

class _ListPilihanWidgetState extends State<_ListPilihanWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ...widget.pilihans.map((e) {
          return PilihanWidget(
            key: ObjectKey(e),
          );
        }).toList(),
        AddButtonWidget(
          onPressed: () {
            widget.pilihans.add(Pilihan());
          },
        ),
      ],
    );
  }
}
