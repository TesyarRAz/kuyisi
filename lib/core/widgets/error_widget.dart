part of core_widgets;

class ErrorWidget extends StatelessWidget {
  final String errorText;

  const ErrorWidget(this.errorText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        errorText,
        style: const TextStyle(
          color: Colors.red,
        ),
      ),
    );
  }
}
