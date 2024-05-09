import 'dart:async';

void main() async {
  Future<int> myFutureErrorFunc() async {
    try {
      print("Começando a conversa!!!");
      await Future.delayed(Duration(seconds: 1));
      print("João: Bom dia, grupo!");
      await Future.delayed(Duration(seconds: 1));
      print("Mariana: Bom dia! Tudo bem?");
      await Future.delayed(Duration(seconds: 1));
      print("João: Suave, e vc?");
      await Future.delayed(Duration(seconds: 1));
      print("Mariana: Certinho.");
      await Future.delayed(Duration(seconds: 1));
      return 42;
    } catch (e) {
      print("An error occurred $e");
      return 404;
    } finally {
      print("Finalizou a conversa");
    }
  }

  await myFutureErrorFunc();

  print("Acabou a função");
}
