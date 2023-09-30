void main(List<String> args) {
  Map dict = {
    "Key": "value",
    1:2,
  };

  print(dict["value"]);
}



/* 


var username;

  dynamic getData() async{
    await Future.delayed(Duration(seconds: 3), () {
      username = "Vaibhav";
    });
  }

  void display() async{
    // ignore: await_only_futures
    await getData();
    print(username);
  }


// ASYNC == Functions Start but returns after some delay
// Future.delayed == fuction start after desired delay
void timer() {
  Future.delayed(Duration(seconds: 3), () {
    print("Alarm is ringing");
  });
}

*/
