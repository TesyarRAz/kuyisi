part of bank_soal;

class HomeScreen extends StatelessWidget {
  final bankSoalService = Get.find<BankSoalService>();

  HomeScreen({Key? key}) : super(key: key);

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
      body: FutureBuilder<PostgrestResponse<dynamic>>(
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
              return const Center(child: EmptyWidget());
            }
          }

          return const Center(child: ErrorWidget("Masalah Terjadi"));
        },
      ),
      floatingActionButton: FloatingActionButton.small(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.to(() => CreateScreen());
        },
      ),
    );
  }
}
