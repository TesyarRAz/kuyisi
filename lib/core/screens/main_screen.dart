part of core_screens;

class MainScreen extends StatelessWidget {
  final _packageInfo = Get.find<PackageInfo>();

  late final List<Widget> _container;

  final _containerIndex = 0.obs;

  MainScreen({Key? key}) : super(key: key) {
    _container = [
      BankSoalModule.HomeScreen(),
      BankSoalModule.HomeScreen(),
      BankSoalModule.HomeScreen(),
      BankSoalModule.HomeScreen(),
      BankSoalModule.HomeScreen(),
    ];
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
      body: Obx(() => _container[_containerIndex.value]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.blue,
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _MainButtonWidget(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      _containerIndex.value = 0;
                    },
                  ),
                  _MainButtonWidget(
                    icon: const Icon(Icons.history),
                    onPressed: () {
                      // _containerIndex.value = 1;
                    },
                  ),
                  _MainButtonWidget(
                    bgColor: Colors.blue[700],
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // _containerIndex.value = 2;
                    },
                  ),
                  _MainButtonWidget(
                    icon: const Icon(Icons.menu_book_rounded),
                    onPressed: () {
                      _containerIndex.value = 3;
                    },
                  ),
                  _MainButtonWidget(
                    icon: const Icon(Icons.account_circle_rounded),
                    onPressed: () {
                      // _containerIndex.value = 4;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MainButtonWidget extends StatelessWidget {
  final Color? bgColor;
  final Icon icon;
  final Function() onPressed;

  const _MainButtonWidget({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          color: Colors.white,
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
