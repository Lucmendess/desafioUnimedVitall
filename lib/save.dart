import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaSave extends StatelessWidget {
  final Color buttonColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Image.asset("images/unimed_new.png"),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Container(
                height: 350,
                child: Column(
                  children: [
                    Image.asset(
                      "images/nurse.png",
                      height: 115,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: Text(
                        "Sua triagem foi enviada com sucesso!",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "Boa consulta",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        child: Text(
                          'Sair',
                          style: TextStyle(
                            color: this.buttonColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        alignment: Alignment.center,
                        height: 50.0,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: this.buttonColor, width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onTap: () {
                        SystemNavigator.pop();
                      },
                    ),
                  ],
                )),
          ),
        ));
  }
}
