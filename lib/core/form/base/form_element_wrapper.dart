class FormElement<T> {
  final T data;
  final String title;
  bool? isChecked;

  FormElement({required this.data, required this.title, this.isChecked});
}
