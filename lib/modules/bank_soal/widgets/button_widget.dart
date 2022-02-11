part of bank_soal;

class AddButtonWidget extends StatelessWidget {
  final Function()? onPressed;

  const AddButtonWidget({Key? key, this.onPressed}) : super(key: key);

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
