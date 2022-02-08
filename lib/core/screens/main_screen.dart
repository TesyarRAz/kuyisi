part of core_screens;

class MainScreen extends StatelessWidget {
  final _packageInfo = Get.find<PackageInfo>();

  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_packageInfo.appName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: MediaQuery.of(context).size.width ~/ 130,
          shrinkWrap: true,
          children: [
            _CardWidget(
              icon: const Icon(Icons.book_outlined),
              text: "Daftar Form",
              onPressed: () {
                Get.to(() => HomeScreen());
              },
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   label: const Text("My Form"),
      //   onPressed: () {
      //     Get.to(() => HomeScreen());
      //   },
      // ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  final Widget icon;
  final String text;
  final Function()? onPressed;

  const _CardWidget({
    Key? key,
    required this.icon,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: icon,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
