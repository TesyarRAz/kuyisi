part of bank_soal;

class CreateScreen extends StatelessWidget {
  final _soals = <Soal>[].obs;

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
              TextField(
                decoration: const InputDecoration(
                  labelText: "Nama Tes",
                  border: OutlineInputBorder(),
                ),
                minLines: max(MediaQuery.of(context).size.width ~/ 200, 1),
                maxLines: 5,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Obx(
                    () => ListView(
                      shrinkWrap: true,
                      children: _soals
                          .map((e) => Padding(
                                key: ObjectKey(e),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: SoalWidget(
                                  soal: e,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  _AddButtonWidget(
                    onPressed: () {
                      _soals.add(Soal());
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _AddButtonWidget extends StatelessWidget {
  final Function()? onPressed;

  const _AddButtonWidget({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
