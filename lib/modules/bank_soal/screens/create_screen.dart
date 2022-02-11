part of bank_soal;

class CreateScreen extends StatelessWidget {
  CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: "Nama Tes",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.multiline,
              ),
              const SizedBox(
                height: 20,
              ),
              _ListSoalWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class _ListSoalWidget extends StatefulWidget {
  final soals = <Soal>[];

  @override
  State<StatefulWidget> createState() => _ListSoalWidgetState();
}

class _ListSoalWidgetState extends State<_ListSoalWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ...widget.soals.map((e) {
          return Padding(
            key: ValueKey(e.soal),
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SoalWidget(
              soal: e,
            ),
          );
        }).toList(),
        AddButtonWidget(
          onPressed: () {
            setState(() {
              widget.soals.add(Soal(
                pilihans: [],
              ));
            });
          },
        ),
      ],
    );
  }
}
