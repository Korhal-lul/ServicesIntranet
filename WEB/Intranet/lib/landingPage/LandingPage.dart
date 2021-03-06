/*
 * SENAI / CENTROWEG
 * AIPSIN 2019/1
 * MI-66
 * Autor(es): Victor Hugo Moresco e Gabriel Da Costa
 *
 * Data: 12/11/2020
 *
 * Classe da pagina inicial, onde mostra o gráfico e o calendário
 * Possui dois displays para mobile e desktop
 *
 *===============================================================
 * Documentação da Classe
 *
 *  Data: 21/12/2020
 *  Responsável: Victor Hugo Moresco
 *
 * ================================================================
 * Imports
 * ================================================================
 */

import 'package:flutter/material.dart';
import 'package:flutter_webpage/chart/line_chart_page.dart';
import 'package:table_calendar/table_calendar.dart';

class LandingPage extends StatelessWidget {
  createState() => LandingPage();

  CalendarController _controller = CalendarController();

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 1200,
            height: 500,
            child: LineChart1(),
          ),
          SizedBox(height: 12),
          new SizedBox(
            height: 1,
            child: new Center(
              child: new Container(
                margin: EdgeInsets.zero,
                height: 10,
                width: width,
                color: Color.fromRGBO(59, 59, 59, 1),
              ),
            ),
          ),
          SizedBox(height: 12),
          (width > 1200) ? rowDisplay(width) : columnDisplay(width),
          SizedBox(height: 20),
        ],
      )
    ];
  }

  Widget rowDisplay(width) {
    return Row(
      children: [
        Column(
          children: [
            Card(
              color: Color.fromRGBO(32, 32, 32, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Flexible(
                      child: Container(
                    width: 813,
                    height: 162,
                    child: AspectRatio(
                        aspectRatio: 1.23,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 220,
                              child: Image.network(
                                  'https://media.discordapp.net/attachments/791121386298146857/791121481605185536/DuplaDinamica.jpg'),
                            ),
                            Container(
                                width: 593,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 21,
                                    ),
                                    Container(
                                      child: Row(children: <Widget>[
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Bem vindo, User",
                                          style: TextStyle(
                                              fontFamily: "RobotoThin",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 300,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.edit),
                                          color: Colors.white,
                                          iconSize: 20,
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 21,
                                    ),
                                    Container(
                                        child: Row(children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "A tela atual contém respectivas opções para melhor interação para com o\nusuário solicitante. Aproveite!",
                                        style: TextStyle(
                                            fontFamily: "RobotoThin",
                                            color: Colors.white,
                                            fontSize: 15),
                                      ),
                                    ]))
                                  ],
                                ))
                          ],
                        )),
                  )),
                ],
              ),
            ),
            Card(
              color: Color.fromRGBO(32, 32, 32, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      width: 813,
                      height: 162,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.alarm,
                            color: Color.fromRGBO(250, 250, 250, 1.0),
                            size: 80,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Relógio\nponto",
                            style: TextStyle(
                                fontFamily: "RobotoThin",
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Entrada",
                                style: TextStyle(
                                    fontFamily: "RobotoThin",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text(
                                "7:30",
                                style: TextStyle(
                                    fontFamily: "RobotoThin",
                                    color: Colors.white,
                                    fontSize: 70),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Saída",
                                style: TextStyle(
                                    fontFamily: "RobotoThin",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "16:30",
                                style: TextStyle(
                                    fontFamily: "RobotoThin",
                                    color: Colors.white,
                                    fontSize: 70),
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: 386,
          height: 332,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color.fromRGBO(32, 32, 32, 1),
          ),
          child: TableCalendar(
            calendarStyle: CalendarStyle(
              canEventMarkersOverflow: true,
              markersColor: Colors.white,
              weekdayStyle: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 0.7),
                  fontFamily: "RobotoRegular"),
              todayColor: Color.fromRGBO(1, 115, 116, 1),
              todayStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: "RobotoRegular"),
              selectedColor: Color.fromRGBO(3, 218, 197, 1),
              selectedStyle:
                  TextStyle(color: Colors.black, fontFamily: "RobotoRegular"),
              outsideWeekendStyle:
                  TextStyle(color: Colors.white60, fontFamily: "RobotoRegular"),
              outsideStyle:
                  TextStyle(color: Colors.white38, fontFamily: "RobotoRegular"),
              weekendStyle: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 0.7),
                  fontFamily: "RobotoRegular"),
              renderDaysOfWeek: false,
            ),
            headerStyle: HeaderStyle(
              leftChevronIcon:
                  Icon(Icons.arrow_back_ios, size: 15, color: Colors.white),
              rightChevronIcon:
                  Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white),
              titleTextStyle: TextStyle(color: Colors.white),
              formatButtonVisible: false,
            ),
            calendarController: _controller,
          ),
        )
      ],
    );
  }

  Widget columnDisplay(width) {
    return Column(
      children: [
        Column(
          children: [
            Card(
              color: Color.fromRGBO(32, 32, 32, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Flexible(
                      child: Container(
                    width: 863,
                    height: 150,
                    child: AspectRatio(
                        aspectRatio: 1.23,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 200,
                              child: Image.network(
                                  'https://media.discordapp.net/attachments/791121386298146857/791121481605185536/DuplaDinamica.jpg'),
                            ),
                            Container(
                                width: 282,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 21,
                                    ),
                                    Container(
                                      child: Row(children: <Widget>[
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Bem vindo, User",
                                          style: TextStyle(
                                              fontFamily: "RobotoThin",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 26),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.edit),
                                          color: Colors.white,
                                          iconSize: 20,
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        child: Row(children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        (width > 660)
                                            ? "A tela atual contém respectivas opções para melhor interação para com o\nusuário solicitante. Aproveite!"
                                            : "A tela atual contém respectivas opções para\n melhor interação para com o usuário\n solicitante.Aproveite!",
                                        style: TextStyle(
                                            fontFamily: "RobotoRegular",
                                            color: Colors.white,
                                            fontSize: 16),
                                      ),
                                    ]))
                                  ],
                                ))
                          ],
                        )),
                  )),
                ],
              ),
            ),
            Card(
              color: Color.fromRGBO(32, 32, 32, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Flexible(
                    child: Container(
                        width: 863,
                        height: 162,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: width / 20,
                            ),
                            Icon(
                              Icons.alarm,
                              color: Color.fromRGBO(250, 250, 250, 1.0),
                              size: 60,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Relógio\nponto",
                              style: TextStyle(
                                  fontFamily: "RobotoThin",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Entrada",
                                  style: TextStyle(
                                      fontFamily: "RobotoThin",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "7:30",
                                  style: TextStyle(
                                      fontFamily: "RobotoThin",
                                      color: Colors.white,
                                      fontSize: 50),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Saída",
                                  style: TextStyle(
                                      fontFamily: "RobotoThin",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "16:30",
                                  style: TextStyle(
                                      fontFamily: "RobotoThin",
                                      color: Colors.white,
                                      fontSize: 50),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: 124,
        ),
        Container(
          width: 386,
          height: 332,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color.fromRGBO(32, 32, 32, 1),
          ),
          child: TableCalendar(
            calendarStyle: CalendarStyle(
              canEventMarkersOverflow: true,
              markersColor: Colors.white,
              weekdayStyle: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 0.7),
                  fontFamily: "RobotoRegular"),
              todayColor: Color.fromRGBO(1, 115, 116, 1),
              todayStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: "RobotoRegular"),
              selectedColor: Color.fromRGBO(3, 218, 197, 1),
              selectedStyle:
                  TextStyle(color: Colors.black, fontFamily: "RobotoRegular"),
              outsideWeekendStyle:
                  TextStyle(color: Colors.white60, fontFamily: "RobotoRegular"),
              outsideStyle:
                  TextStyle(color: Colors.white38, fontFamily: "RobotoRegular"),
              weekendStyle: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 0.7),
                  fontFamily: "RobotoRegular"),
              renderDaysOfWeek: false,
            ),
            headerStyle: HeaderStyle(
              leftChevronIcon:
                  Icon(Icons.arrow_back_ios, size: 15, color: Colors.white),
              rightChevronIcon:
                  Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white),
              titleTextStyle: TextStyle(color: Colors.white),
              formatButtonVisible: false,
            ),
            calendarController: _controller,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return Row(
            children: pageChildren(constraints.biggest.width),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
