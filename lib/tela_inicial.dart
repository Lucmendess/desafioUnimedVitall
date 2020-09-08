import 'package:flutter/material.dart';
import 'package:test_chat/triagem.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  final Color buttonColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Image.asset("images/unimed_new.png"),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sua consulta foi agendada com sucesso!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Card(
                elevation: 5,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  width: screenSize.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dados da consulta',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        'Laura Timbó Pereira',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Dermatologista',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          Icon(Icons.calendar_today),
                          const SizedBox(width: 10.0),
                          Text(
                            '09 de agosto de 2020',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          const SizedBox(width: 10.0),
                          Text(
                            '14:40, Quinta-feira',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          const SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: screenSize.width * .75,
                                child: Text(
                                  'Unidade Centro, Avenida José Cardoso, 1234',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Text(
                                'Fortaleza, Ceará',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Faça sua triagem!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Na triagem, a gente vai te fazer algumas perguntas bem rápidas, para seu médico te entender da melhor forma possível e apenas ele terá acesso às suas informações.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Deseja realizar a triagem?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      child: Container(
                        child: Text(
                          'Sim',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaTriagem()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        child: Text(
                          'Agora não',
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
                      onTap: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
