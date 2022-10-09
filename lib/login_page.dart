import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff212544),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * .25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/topImage.png"))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Merhaba, \nHoşgeldin",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    customSizedBox(),
                    TextField(
                      decoration: customInputDecoration("Kullanıcı Adı"),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: customInputDecoration("Parola"),
                    ),
                    customSizedBox(),
                    Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Şifremi unuttum",
                                style: TextStyle(color: Colors.pink[200])))),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        child: Container(
                            height: 50,
                            width: 150,
                            margin: EdgeInsets.symmetric(horizontal: 60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff31274F)),
                            child: Center(child: Text("Giriş Yap"))),
                        onPressed: () {},
                      ),
                    ),
                    customSizedBox(),
                    Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Hesap oluştur!",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.pink[200])))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customSizedBox() => SizedBox(
        height: 20,
      );
  InputDecoration customInputDecoration(String message) {
    return InputDecoration(
      hintText: message,
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
    );
  }
}
