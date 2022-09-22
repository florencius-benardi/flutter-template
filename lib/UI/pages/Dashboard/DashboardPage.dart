import 'package:our_e_school/UI/Utility/Resources.dart';
import 'package:our_e_school/UI/Utility/constants.dart';
import 'package:our_e_school/UI/Utility/custom_icons.dart';
import 'package:our_e_school/UI/Widgets/ColumnReusableCardButton.dart';
import 'package:our_e_school/UI/Widgets/RowReusableCardButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_e_school/UI/pages/Dashboard/Transportation/TransportationPage.dart';
import 'Announcement/AnnouncementPage.dart';
import 'Assignment/AssignmentPage.dart';
import 'E-Card/E-CardPage.dart';
import 'E_Book/E_bookSelect.dart';
import 'Exam/TopicSelectPage.dart';
import 'Fees/FeesPage.dart';
import 'Holidays/HolidayPage.dart';
import 'ParentingGuide/ParentingGuidePage.dart';
import 'Result/ResultPage.dart';
import 'TimeTable/TimeTablePage.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);
  static String pageName = string.dashboard;

  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RowReusableCardButton(
                            tileColor: Colors.deepOrangeAccent,
                            label: string.e_card,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ECardPage(),
                                ),
                              );
                            },
                            icon: Icons.perm_contact_calendar,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RowReusableCardButton(
                            tileColor: null,
                            icon: Icons.av_timer,
                            label: string.timetable,
                            onPressed: () {
                              kopenPage(context, TimeTablePage());
                            },
                          ),
                        ],
                      ),
                    ),
                    ColumnReusableCardButton(
                      height: 70,
                      tileColor: Colors.orangeAccent,
                      label: string.announcement,
                      icon: CustomIcons.megaphone,
                      onPressed: () {
                        kopenPage(context, AnnouncementPage());
                      },
                    ),
                    Container(
                      height: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RowReusableCardButton(
                            tileColor: Colors.blueGrey,
                            icon: CustomIcons.traveler_with_a_suitcase,
                            label: string.holidays,
                            onPressed: () {
                              kopenPage(context, HolidayPage());
                            },
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RowReusableCardButton(
                            tileColor: Colors.indigoAccent,
                            icon: Icons.assessment,
                            label: string.results,
                            onPressed: () {
                              kopenPage(context, ResultPage());
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RowReusableCardButton(
                            tileColor: Colors.lightGreen,
                            label: string.assignment,
                            onPressed: () {
                              kopenPage(context, AssignmentsPage());
                            },
                            icon: Icons.assignment,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RowReusableCardButton(
                            tileColor: Colors.lime,
                            icon: Icons.attach_money,
                            label: string.fees,
                            onPressed: () {
                              kopenPage(context, FeesPage());
                            },
                          ),
                        ],
                      ),
                    ),
                    ColumnReusableCardButton(
                        height: 70,
                        tileColor: Colors.grey,
                        label: string.transportation,
                        onPressed: () {
                          kopenPage(context, TransportationPage());
                        },
                        icon: FontAwesomeIcons.bus),
                    SizedBox(
                      height: 105,
                      child: ListView(
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RowReusableCardButtonBanner(
                                paddingTop: 0,
                                tileColor: Colors.pink,
                                icon: Icons.assistant_photo,
                                label: string.exams,
                                onPressed: () {
                                  kopenPage(context, TopicSelectPage());
                                },
                              ),
                              RowReusableCardButtonBanner(
                                paddingTop: 0,
                                tileColor: Colors.tealAccent,
                                icon: FontAwesomeIcons.book,
                                label: string.e_book,
                                onPressed: () {
                                  kopenPage(context, EBookSelect());
                                },
                              ),
                              RowReusableCardButtonBanner(
                                paddingTop: 0,
                                tileColor: Colors.deepPurpleAccent,
                                icon: FontAwesomeIcons.cameraRetro,
                                label: string.video,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 110,
                      child: ListView(
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RowReusableCardButtonBanner(
                                tileColor: Colors.pinkAccent,
                                icon: FontAwesomeIcons.female,
                                label: string.parenting_guide,
                                onPressed: () {
                                  kopenPage(context, ParentingGuidePage());
                                },
                              ),
                              RowReusableCardButtonBanner(
                                tileColor: Colors.red,
                                icon: FontAwesomeIcons.medkit,
                                label: string.health_tips,
                                onPressed: () {},
                              ),
                              RowReusableCardButtonBanner(
                                tileColor: Colors.blue,
                                icon: FontAwesomeIcons.userMd,
                                label: string.vaccinations,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ColumnReusableCardButton(
                      tileColor: Colors.greenAccent,
                      height: 70,
                      label: string.offers,
                      onPressed: () {},
                      icon: Icons.receipt,
                      directionIcon: Icons.chevron_right,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
