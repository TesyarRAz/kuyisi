part of bank_soal;

class PilihanWidget extends StatelessWidget {
  final _pilihan = TextEditingController();

  PilihanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        controller: _pilihan,
      ),
    );
  }
}
