void main() {
  print("Hello Bharat");
  int a = 10;
  print(a + 10);

  String name = "Vaibhav" + ' Sapate';
  print(name);

  bool happy = true;
  print(happy);

  dynamic b = 10;
  b = "hello";
  print(b);
  print(greeting());
  print(lol());
}

String greeting() => ("Hello Vaibhav" * 10);

dynamic lol() {
  if (10 < 20)
    return true;
  else
    return "hello";
}
