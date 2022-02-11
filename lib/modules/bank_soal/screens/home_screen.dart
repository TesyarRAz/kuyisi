part of bank_soal;

class HomeScreen extends StatelessWidget {
  final bankSoalService = Get.find<BankSoalService>();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PostgrestResponse<dynamic>>(
      future: bankSoalService.all(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: ErrorWidget(snapshot.error.toString()));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: LoadingWidget());
        }

        if (snapshot.hasData) {
          var data = snapshot.data!;
          var count = data.count ?? 0;

          if (count == 0) {
            return _ListBankSoalWidget(
              data: data.data ?? [],
            );
          }
        }

        return const Center(child: ErrorWidget("Masalah Terjadi"));
      },
    );
  }
}

class _ListBankSoalWidget extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  const _ListBankSoalWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        ...data.map((e) {
          return const Card(
            child: Text('Hello World'),
          );
        }).toList(),
        Card(
          child: InkWell(
            onTap: () {
              Get.to(CreateScreen());
            },
            child: const Center(
              child: Icon(Icons.add),
            ),
          ),
        ),
      ],
    );
  }
}
