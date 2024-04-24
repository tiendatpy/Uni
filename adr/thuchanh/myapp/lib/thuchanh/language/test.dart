void main() async {
  print(1);
  var result = await Future<int>.delayed(
    const Duration(seconds: 2),
    () => 2,
  );
  print(3);
  print(result);
}
