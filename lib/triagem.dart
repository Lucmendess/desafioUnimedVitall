import 'package:flutter/material.dart';
import 'package:test_chat/save.dart';

class TelaTriagem extends StatefulWidget {
  @override
  _TelaTriagemPageState createState() => _TelaTriagemPageState();
}

class _TelaTriagemPageState extends State<TelaTriagem> {
  final Color buttonColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    List<Pergunta> perguntas = [
      Pergunta(
          "Se você possui algum tipo de deficiência digite o número abaixo\n\n1. Cadeirante\n2. Auditiva\n3. Visual\nParalisia Cerebral\n5. Autismo\n6. Intelectual\n7. Dificuldade de locomoção\n8. Síndrome de Down\n9. outra"),
      Pergunta(
          "Se você possui alguma doença escolha abaixo  \n\n1. Hipertensão\n2. Diabetes\n3. Colesterol elevado\n4. DPOC (Doença pulmonar obstrutiva crônica)\n5. Osteoporose\n6. Mal de parkinson\n7. Alzheimer\n8. Outra"),
      Pergunta("Você possui algum tipo de alergia ?"),
      Pergunta("Deseja deixar mais alguma informação para o seu médico ?")
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Triagem"),
        ),
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: perguntas,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      child: Text(
                        'Enviar e Salvar',
                        style: TextStyle(
                          color: this.buttonColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      alignment: Alignment.center,
                      height: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: this.buttonColor, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onTap: () {
                      //Vai para tela de Salvo com sucesso
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaSave()),
                      );
                    },
                  ),
                ],
              )),
        ));
  }
}

class Pergunta extends StatefulWidget {
  final String pergunta;

  const Pergunta(this.pergunta);

  @override
  _PerguntaState createState() => _PerguntaState();
}

class _PerguntaState extends State<Pergunta> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Text(widget.pergunta == null ? "" : widget.pergunta),
              ),
              Image.asset(
                "images/audio.png",
                width: 32,
              )
            ],
          ),
          TextField(),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
