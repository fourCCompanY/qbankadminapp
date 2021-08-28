import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qbankadminapp/components/constants.dart';
import 'package:qbankadminapp/db/db1.dart';

class TopicWiseQuestions extends StatefulWidget {
  final maxLines = 5;
  @override
  _TopicWiseQuestionsState createState() => _TopicWiseQuestionsState();
}

class _TopicWiseQuestionsState extends State<TopicWiseQuestions> {
  void clearText() {
    _questionEditingController.clear();
  }

  String year = "1st Year";
  String subject = 'Anatomy';
  String topic = 'Abdomen';
  String firstSubjectDefaultValue = 'Anatomy';
  String secondSubjectDefaultValue = 'Pathology';
  String thirdSubjectDefaultValue = 'General Medicine';
  String fourthSubjectDefaultValue = 'Neurology and Neurosurgery';
  String anatomyTopicDefaultValue = 'Abdomen';
  String physiologyTopicDefaultValue = 'General Physiology';
  String biochemistryTopicDefaultValue = 'Nutrition';
  String biomechanicsTopicDefaultValue = 'Joint Structure and Function';
  String sociologyTopicDefaultValue =
      'Investigative Methods & Relation to other branches';
  String psychologyTopicDefaultValue = 'Growth & Development';
  String pathologyTopicDefaultValue = 'Cell injury';
  String microbiologyTopicDefaultValue = 'GENERAL MICROBIOLOGY';
  String pharmacologyTopicDefaultValue = 'GENERAL PHARMACOLOGY';
  String electrotherapyTopicDefaultValue = 'Introductory Physics';
  String researchmethodologyTopicDefaultValue =
      'Introduction to research methodology';
  String neurophysiotherapyTopicDefaultValue = 'Neurological assessment ';
  String communitybasedrehabilitationTopicDefaultValue = 'Rehabilitation';
  String biostatisticsTopicDefaultValue = 'Introduction';
  String exercisetherapyTopicDefaultValue = 'Methods of testing';
  String generalmedicineTopicDefaultValue = 'Infection';
  String generalsurgeryTopicDefaultValue = 'electrolyte/acid base disturbance';
  String communitymedicineTopicDefaultValue = 'Health & disease ';
  String neurologyandneurosurgeryTopicDefaultValue = 'Anatomy in Neurology';
  String orthopaedicsandtraumatologyTopicDefaultValue = 'Introduction';
  String orthopaedicsandsportsphysiothrapyTopicDefaultValue = 'PT Assessment';
  String cardiorespiratoryTopicDefaultValue =
      'Anatomical & Physiological difference';
  TextEditingController _questionEditingController = TextEditingController();
  AddTopicWiseQuestionsService _topicWiseQuestionsService =
      AddTopicWiseQuestionsService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        elevation: 0.00,
        title: Text("Add Topic-Wise Questions"),
        backgroundColor: Color(0xff212121),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "Select Year",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            trailing: DropdownButton<String>(
              iconEnabledColor: Colors.white,
              elevation: 2,
              value: year,
              dropdownColor: buttonColor,
              style: TextStyle(color: Colors.white),
              onChanged: (String? value) {
                print(value);
                setState(() {
                  year = value!;
                });
              },
              items: [
                DropdownMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Text("1st Year"),
                      ),
                      Container(
                        height: 1,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  value: '1st Year',
                ),
                DropdownMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Text("2nd Year"),
                      ),
                      Container(
                        height: 1,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  value: '2nd Year',
                ),
                DropdownMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Text("3rd Year"),
                      ),
                      Container(
                        height: 1,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  value: '3rd Year',
                ),
                DropdownMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Center(child: Text("4th Year")),
                      ),
                    ],
                  ),
                  value: '4th Year',
                ),
              ],
            ),
          ),
          (year == '1st Year')
              ? ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      "Select Subject",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  trailing: DropdownButton<String>(
                    iconEnabledColor: Colors.white,
                    elevation: 2,
                    value: firstSubjectDefaultValue,
                    dropdownColor: buttonColor,
                    style: TextStyle(color: Colors.white),
                    onChanged: (String? value) {
                      print(value);
                      setState(() {
                        firstSubjectDefaultValue = value!;
                        subject = value;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Anatomy'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Anatomy',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Physiology'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Physiology',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Biochemistry'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Biochemistry',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Biomechanics'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Biomechanics',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Psychology'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Psychology',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Sociology'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Sociology',
                      ),
                    ],
                  ),
                )
              : (year == '2nd Year')
                  ? ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Text(
                          "Select Subject",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      trailing: DropdownButton<String>(
                        iconEnabledColor: Colors.white,
                        elevation: 2,
                        value: secondSubjectDefaultValue,
                        dropdownColor: buttonColor,
                        style: TextStyle(color: Colors.white),
                        onChanged: (String? value) {
                          print(value);
                          setState(() {
                            secondSubjectDefaultValue = value!;
                            subject = value;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Text('Pathology'),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            value: 'Pathology',
                          ),
                          DropdownMenuItem(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Text('Microbiology'),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            value: 'Microbiology',
                          ),
                          DropdownMenuItem(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Text('Exercisetherapy'),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            value: 'Excercisetherapy',
                          ),
                          DropdownMenuItem(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Text('Electrotherapy'),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            value: 'Electrotherapy',
                          ),
                          DropdownMenuItem(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Text('Pharmacology'),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            value: 'Pharmacology',
                          ),
                        ],
                      ),
                    )
                  : (year == '3rd Year')
                      ? ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Text(
                              "Select Subject",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          trailing: DropdownButton<String>(
                            iconEnabledColor: Colors.white,
                            elevation: 2,
                            value: thirdSubjectDefaultValue,
                            dropdownColor: buttonColor,
                            style: TextStyle(color: Colors.white),
                            onChanged: (String? value) {
                              print(value);
                              setState(() {
                                thirdSubjectDefaultValue = value!;
                                subject = value;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('General Medicine'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'General Medicine',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('General Surgery'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'General Surgery',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child:
                                          Text('Orthopaedics & Traumatology'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Orthopaedics & Traumatology',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text(
                                          'Orthopaedics and Sports Physiotherapy'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Orthopaedics & Sports Physiotherapy',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Cardio Respiratory'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Cardio Respiratory',
                              ),
                            ],
                          ),
                        )
                      : ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Text(
                              "Select Subject",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          trailing: DropdownButton<String>(
                            iconEnabledColor: Colors.white,
                            elevation: 2,
                            value: fourthSubjectDefaultValue,
                            dropdownColor: buttonColor,
                            style: TextStyle(color: Colors.white),
                            onChanged: (String? value) {
                              print(value);
                              setState(() {
                                fourthSubjectDefaultValue = value!;
                                subject = value;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Neurology and Neurosurgery'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Neurology and Neurosurgery',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Neurophysiotherapy'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Neurophysiotherapy',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Community Medicine'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Community Medicine',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text(
                                          'Community Based Rehabilitation'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Community Based Rehabilitation',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Research Methodology'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Research Methodology',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Biostatics'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Biostatics',
                              ),
                            ],
                          ),
                        ),
          (subject == 'Anatomy')
              ? ListTile(
                  title: Text(
                    "Select Topic",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  trailing: DropdownButton<String>(
                    iconEnabledColor: Colors.white,
                    elevation: 2,
                    value: anatomyTopicDefaultValue,
                    dropdownColor: buttonColor,
                    style: TextStyle(color: Colors.white),
                    onChanged: (String? value) {
                      print(value);
                      setState(() {
                        anatomyTopicDefaultValue = value!;
                        topic = value;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Abdomen'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Abdomen',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Connective tissues'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Connective tissues',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Upper extremity'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Upper extremity',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Lower extremity'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Lower extremity',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Trunk & Pelvis'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Trunk & Pelvis',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Head & Neck'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Head & Neck',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Cardiovascular system'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Cardiovascular system',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Respiratory system'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Respiratory system',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Central Nervous system'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Central Nervous system',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Peripheral Nervous system'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Peripheral Nervous system',
                      ),
                      DropdownMenuItem(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text('Cranial Nerves'),
                            ),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        value: 'Cranial Nerves',
                      ),
                    ],
                  ),
                )
              : (subject == 'Physiology')
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            "Select Topic",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ListTile(
                          title: DropdownButton<String>(
                            iconEnabledColor: Colors.white,
                            elevation: 2,
                            value: physiologyTopicDefaultValue,
                            dropdownColor: buttonColor,
                            style: TextStyle(color: Colors.white),
                            onChanged: (String? value) {
                              print(value);
                              setState(() {
                                physiologyTopicDefaultValue = value!;
                                topic = value;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('General Physiology'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'General Physiology',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Blood and Body Fluids'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Blood and Body Fluids',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Muscle Physiology'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Muscle Physiology',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Digestive System'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Digestive System',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Renal Physiology and Skin'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Renal Physiology and Skin',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Endocrinology'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Endocrinology',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Reproductive System'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Reproductive System',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Cardiovascular System'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Cardiovascular System',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Column(
                                        children: [
                                          Text('Respiratory System and'),
                                          Text('Environmental Physiology'),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value:
                                    'Respiratory System and Environmental Physiology',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Nervous System'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Nervous System',
                              ),
                              DropdownMenuItem(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text('Special Senses'),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                value: 'Special Senses',
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : (subject == 'Biochemistry')
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "Select Topic",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            ListTile(
                              title: DropdownButton<String>(
                                iconEnabledColor: Colors.white,
                                elevation: 2,
                                value: biochemistryTopicDefaultValue,
                                dropdownColor: buttonColor,
                                style: TextStyle(color: Colors.white),
                                onChanged: (String? value) {
                                  print(value);
                                  setState(() {
                                    biochemistryTopicDefaultValue = value!;
                                    topic = value;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Nutrition'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Nutrition',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Carbohydrate'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Carbohydrate',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Lipid'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Lipid',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Amino Acid and Protein'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Amino Acid and Protein',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Enzymes'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Enzymes',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Nuclic Acid Chemistry'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Nuclic Acid Chemistry',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child:
                                              Text('Digestion and Absorption'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Digestion and Absorption',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Vitamins'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Vitamins',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Mineral Metabolism'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Mineral Metabolism',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Cell Biology'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Cell Biology',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Muscle Contraction'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Muscle Contraction',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child:
                                              Text('Connective Tissue, Bone'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Connective Tissue, Bone',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Hormone Action'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Hormone Action',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Acid Base Balance'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Acid Base Balance',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Water Balance'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Water Balance',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Electrolyte Balance'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Electrolyte Balance',
                                  ),
                                  DropdownMenuItem(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text('Clinical Biochemistry'),
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    value: 'Clinical Biochemistry',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : (subject == 'Biomechanics')
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    "Select Topic",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: DropdownButton<String>(
                                    iconEnabledColor: Colors.white,
                                    elevation: 2,
                                    value: biomechanicsTopicDefaultValue,
                                    dropdownColor: buttonColor,
                                    style: TextStyle(color: Colors.white),
                                    onChanged: (String? value) {
                                      print(value);
                                      setState(() {
                                        biomechanicsTopicDefaultValue = value!;
                                        topic = value;
                                      });
                                    },
                                    items: [
                                      DropdownMenuItem(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 10,
                                              ),
                                              child: Text(
                                                  'Joint Structure and Function'),
                                            ),
                                            Container(
                                              height: 1,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        value: 'Joint Structure and Function',
                                      ),
                                      DropdownMenuItem(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 10,
                                              ),
                                              child: Text(
                                                  'Axial Skeletal Joint Complexes'),
                                            ),
                                            Container(
                                              height: 1,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        value: 'Axial Skeletal Joint Complexes',
                                      ),
                                      DropdownMenuItem(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 10,
                                              ),
                                              child: Text(
                                                  'Upper Extremity Joint Complexes'),
                                            ),
                                            Container(
                                              height: 1,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        value:
                                            'Upper Extremity Joint Complexes',
                                      ),
                                      DropdownMenuItem(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 10,
                                              ),
                                              child: Text('Hip Joint'),
                                            ),
                                            Container(
                                              height: 1,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        value: 'Hip Joint',
                                      ),
                                      DropdownMenuItem(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 10,
                                              ),
                                              child:
                                                  Text('Integrated Function'),
                                            ),
                                            Container(
                                              height: 1,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        value: 'Integrated Function',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : (subject == 'Psychology')
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 18.0),
                                      child: Text(
                                        "Select Topic",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      title: DropdownButton<String>(
                                        iconEnabledColor: Colors.white,
                                        elevation: 2,
                                        value: psychologyTopicDefaultValue,
                                        dropdownColor: buttonColor,
                                        style: TextStyle(color: Colors.white),
                                        onChanged: (String? value) {
                                          print(value);
                                          setState(() {
                                            psychologyTopicDefaultValue =
                                                value!;
                                            topic = value;
                                          });
                                        },
                                        items: [
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                          'Branches, Methods & Relations'),
                                                      Text('to Physiotherapy'),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value:
                                                'Branches, Methods & Relations to Physiotherapy',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text(
                                                      'Growth & Development'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value: 'Growth & Development',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text(
                                                      'Sensation, Attention & Perception'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value:
                                                'Sensation, Attention & Perception',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text('Motivation'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value: 'Motivation',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text(
                                                      'Frustration & Conflict'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value: 'Frustration & Conflict',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text('Emotions'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value: 'Emotions',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text('Intelligence'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value: 'Intelligence',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text('Thinking'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value: 'Thinking',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text('Learning'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value: 'Learning',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text('Personality'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value: 'Personality',
                                          ),
                                          DropdownMenuItem(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10,
                                                  ),
                                                  child: Text(
                                                      'Leadership & Attitude'),
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            value: 'Leadership & Attitude',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : (subject == 'Sociology')
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Text(
                                            "Select Topic",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          title: DropdownButton<String>(
                                            itemHeight: 70,
                                            iconEnabledColor: Colors.white,
                                            elevation: 2,
                                            value: sociologyTopicDefaultValue,
                                            dropdownColor: buttonColor,
                                            style:
                                                TextStyle(color: Colors.white),
                                            onChanged: (String? value) {
                                              print(value);
                                              setState(() {
                                                sociologyTopicDefaultValue =
                                                    value!;
                                                topic = value;
                                              });
                                            },
                                            items: [
                                              DropdownMenuItem(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                              'Investigative Methods & Relation'),
                                                          Text(
                                                              'to other branches'),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                value:
                                                    'Investigative Methods & Relation to other branches',
                                              ),
                                              DropdownMenuItem(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Text(
                                                          'Social factors in Heath and Disease'),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                value:
                                                    'Social factors in Health and Disease',
                                              ),
                                              DropdownMenuItem(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Text(
                                                          'Socialization and Social Groups'),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                value:
                                                    'Socialization and Social Groups',
                                              ),
                                              DropdownMenuItem(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Text('Family'),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                value: 'Family',
                                              ),
                                              DropdownMenuItem(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Text('Community'),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                value: 'Community',
                                              ),
                                              DropdownMenuItem(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Text(
                                                          'Culture and Health'),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                value: 'Culture and Health',
                                              ),
                                              DropdownMenuItem(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Text(
                                                          'Social Changes'),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                value: 'Social Changes',
                                              ),
                                              DropdownMenuItem(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          vertical: 10,
                                                        ),
                                                        child: Text(
                                                            'Social Problems & Social Security')),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                value:
                                                    'Social Problems & Social Security',
                                              ),
                                              DropdownMenuItem(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Text(
                                                          'Medical Social Worker'),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                value: 'Medical Social Worker',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  : (subject == 'Pathology')
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18.0),
                                              child: Text(
                                                "Select Topic",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            ListTile(
                                              title: DropdownButton<String>(
                                                iconEnabledColor: Colors.white,
                                                elevation: 2,
                                                value:
                                                    pathologyTopicDefaultValue,
                                                dropdownColor: buttonColor,
                                                style: TextStyle(
                                                    color: Colors.white),
                                                onChanged: (String? value) {
                                                  print(value);
                                                  setState(() {
                                                    pathologyTopicDefaultValue =
                                                        value!;
                                                    topic = value;
                                                  });
                                                },
                                                items: [
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'Cell injury'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value: 'Cell injury',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'Inflammation and Repair'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value:
                                                        'Inflammation and Repair',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'Immunopathology'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value: 'Immunopathology',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'Infectious Diseases'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value:
                                                        'Infectious Diseases',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'CIRCULATORY DISTURBANCES'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value:
                                                        'CIRCULATORY DISTURBANCES',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'GROWTH DISTURBANCES AND NEOPLASIA'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value:
                                                        'GROWTH DISTURBANCES AND NEOPLASIA',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'NUTRITIONAL DISORDER'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value:
                                                        'NUTRITIONAL DISORDER',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                              vertical: 10,
                                                            ),
                                                            child: Text(
                                                                'GENETIC DISORDERS')),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value: 'GENETIC DISORDERS',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'HEMATOLOGY'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value: 'HEMATOLOGY',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'RESPIRATORY SYSTEM'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value: 'RESPIRATORY SYSTEM',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'CARDIOVASCULAR PATHOLOGY'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value:
                                                        'CARDIOVASCULAR PATHOLOGY',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'ALIMENTARY TRACT'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value: 'ALIMENTARY TRACT',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'HEPATO-BILIARY PATHOLOGY'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value:
                                                        'HEPATO-BILIARY PATHOLOGY',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'LYMPHATIC SYSTEM'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value: 'LYMPHATIC SYSTEM',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'MUSCULOSKELETAL SYSTEM'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value:
                                                        'MUSCULOSKELETAL SYSTEM',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'ENDOCRINE PATHOLOGY'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value:
                                                        'ENDOCRINE PATHOLOGY',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'NEUROPATHOLOGY'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value: 'NEUROPATHOLOGY',
                                                  ),
                                                  DropdownMenuItem(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 10,
                                                          ),
                                                          child: Text(
                                                              'DERMATOPATHOLOGY'),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    value: 'DERMATOPATHOLOGY',
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      : (subject == 'Microbiology')
                                          ? Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18.0),
                                                  child: Text(
                                                    "Select Topic",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: DropdownButton<String>(
                                                    iconEnabledColor:
                                                        Colors.white,
                                                    elevation: 2,
                                                    value:
                                                        microbiologyTopicDefaultValue,
                                                    dropdownColor: buttonColor,
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    onChanged: (String? value) {
                                                      print(value);
                                                      setState(() {
                                                        microbiologyTopicDefaultValue =
                                                            value!;
                                                        topic = value;
                                                      });
                                                    },
                                                    items: [
                                                      DropdownMenuItem(
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                vertical: 10,
                                                              ),
                                                              child: Text(
                                                                  'GENERAL MICROBIOLOGY'),
                                                            ),
                                                            Container(
                                                              height: 1,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ],
                                                        ),
                                                        value:
                                                            'GENERAL MICROBIOLOGY',
                                                      ),
                                                      DropdownMenuItem(
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                vertical: 10,
                                                              ),
                                                              child: Text(
                                                                  'IMMUNOLOGY'),
                                                            ),
                                                            Container(
                                                              height: 1,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ],
                                                        ),
                                                        value: 'IMMUNOLOGY',
                                                      ),
                                                      DropdownMenuItem(
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                vertical: 10,
                                                              ),
                                                              child: Text(
                                                                  'BACTERIOLOGY'),
                                                            ),
                                                            Container(
                                                              height: 1,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ],
                                                        ),
                                                        value: 'BACTERIOLOGY',
                                                      ),
                                                      DropdownMenuItem(
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                vertical: 10,
                                                              ),
                                                              child: Text(
                                                                  'GENERAL VIROLOGY '),
                                                            ),
                                                            Container(
                                                              height: 1,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ],
                                                        ),
                                                        value:
                                                            'GENERAL VIROLOGY ',
                                                      ),
                                                      DropdownMenuItem(
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                vertical: 10,
                                                              ),
                                                              child: Text(
                                                                  'MYCOLOGY'),
                                                            ),
                                                            Container(
                                                              height: 1,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ],
                                                        ),
                                                        value: 'MYCOLOGY',
                                                      ),
                                                      DropdownMenuItem(
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                vertical: 10,
                                                              ),
                                                              child: Text(
                                                                  'CLINICAL MICROBIOLOGY'),
                                                            ),
                                                            Container(
                                                              height: 1,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ],
                                                        ),
                                                        value:
                                                            'CLINICAL MICROBIOLOGY',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          : (subject == 'Pharmacology')
                                              ? Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 18.0),
                                                      child: Text(
                                                        "Select Topic",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    ListTile(
                                                      title: DropdownButton<
                                                          String>(
                                                        iconEnabledColor:
                                                            Colors.white,
                                                        elevation: 2,
                                                        value:
                                                            pharmacologyTopicDefaultValue,
                                                        dropdownColor:
                                                            buttonColor,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                        onChanged:
                                                            (String? value) {
                                                          print(value);
                                                          setState(() {
                                                            pharmacologyTopicDefaultValue =
                                                                value!;
                                                            topic = value;
                                                          });
                                                        },
                                                        items: [
                                                          DropdownMenuItem(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .symmetric(
                                                                    vertical:
                                                                        10,
                                                                  ),
                                                                  child: Text(
                                                                      'GENERAL PHARMACOLOGY'),
                                                                ),
                                                                Container(
                                                                  height: 1,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ],
                                                            ),
                                                            value:
                                                                'GENERAL PHARMACOLOGY',
                                                          ),
                                                          DropdownMenuItem(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .symmetric(
                                                                    vertical:
                                                                        10,
                                                                  ),
                                                                  child: Text(
                                                                      'Autonomic Nervous System'),
                                                                ),
                                                                Container(
                                                                  height: 1,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ],
                                                            ),
                                                            value:
                                                                'Autonomic Nervous System',
                                                          ),
                                                          DropdownMenuItem(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .symmetric(
                                                                    vertical:
                                                                        10,
                                                                  ),
                                                                  child: Text(
                                                                      'Cardiovascular Pharmacology'),
                                                                ),
                                                                Container(
                                                                  height: 1,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ],
                                                            ),
                                                            value:
                                                                'Cardiovascular Pharmacology',
                                                          ),
                                                          DropdownMenuItem(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .symmetric(
                                                                    vertical:
                                                                        10,
                                                                  ),
                                                                  child: Text(
                                                                      'Neuropharmacology'),
                                                                ),
                                                                Container(
                                                                  height: 1,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ],
                                                            ),
                                                            value:
                                                                'Neuropharmacology',
                                                          ),
                                                          DropdownMenuItem(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .symmetric(
                                                                    vertical:
                                                                        10,
                                                                  ),
                                                                  child: Text(
                                                                      'Disorders of Movement'),
                                                                ),
                                                                Container(
                                                                  height: 1,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ],
                                                            ),
                                                            value:
                                                                'Disorders of Movement',
                                                          ),
                                                          DropdownMenuItem(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .symmetric(
                                                                    vertical:
                                                                        10,
                                                                  ),
                                                                  child: Text(
                                                                      'Inflammatory/Immune response'),
                                                                ),
                                                                Container(
                                                                  height: 1,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ],
                                                            ),
                                                            value:
                                                                'Inflammatory/Immune response',
                                                          ),
                                                          DropdownMenuItem(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .symmetric(
                                                                    vertical:
                                                                        10,
                                                                  ),
                                                                  child: Text(
                                                                      'Digestion and Metabolism'),
                                                                ),
                                                                Container(
                                                                  height: 1,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ],
                                                            ),
                                                            value:
                                                                'Digestion and Metabolism',
                                                          ),
                                                          DropdownMenuItem(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .symmetric(
                                                                      vertical:
                                                                          10,
                                                                    ),
                                                                    child: Text(
                                                                        'Geriatrics')),
                                                                Container(
                                                                  height: 1,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ],
                                                            ),
                                                            value: 'Geriatrics',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              : (subject == 'Electrotherapy')
                                                  ? Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 18.0),
                                                          child: Text(
                                                            "Select Topic",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                        ),
                                                        ListTile(
                                                          title: DropdownButton<
                                                              String>(
                                                            iconEnabledColor:
                                                                Colors.white,
                                                            elevation: 2,
                                                            value:
                                                                electrotherapyTopicDefaultValue,
                                                            dropdownColor:
                                                                buttonColor,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                            onChanged: (String?
                                                                value) {
                                                              print(value);
                                                              setState(() {
                                                                electrotherapyTopicDefaultValue =
                                                                    value!;
                                                                topic = value;
                                                              });
                                                            },
                                                            items: [
                                                              DropdownMenuItem(
                                                                child: Column(
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets
                                                                              .symmetric(
                                                                        vertical:
                                                                            10,
                                                                      ),
                                                                      child: Text(
                                                                          'Introductory Physics'),
                                                                    ),
                                                                    Container(
                                                                      height: 1,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ],
                                                                ),
                                                                value:
                                                                    'Introductory Physics',
                                                              ),
                                                              DropdownMenuItem(
                                                                child: Column(
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets
                                                                              .symmetric(
                                                                        vertical:
                                                                            10,
                                                                      ),
                                                                      child: Text(
                                                                          'Low Frequency Current'),
                                                                    ),
                                                                    Container(
                                                                      height: 1,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ],
                                                                ),
                                                                value:
                                                                    'Low Frequency Current',
                                                              ),
                                                              DropdownMenuItem(
                                                                child: Column(
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets
                                                                              .symmetric(
                                                                        vertical:
                                                                            10,
                                                                      ),
                                                                      child: Text(
                                                                          'Electro Diagnosis'),
                                                                    ),
                                                                    Container(
                                                                      height: 1,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ],
                                                                ),
                                                                value:
                                                                    'Electro Diagnosis',
                                                              ),
                                                              DropdownMenuItem(
                                                                child: Column(
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets
                                                                              .symmetric(
                                                                        vertical:
                                                                            10,
                                                                      ),
                                                                      child: Text(
                                                                          'Medium Frequency Currents'),
                                                                    ),
                                                                    Container(
                                                                      height: 1,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ],
                                                                ),
                                                                value:
                                                                    'Medium Frequency Currents',
                                                              ),
                                                              DropdownMenuItem(
                                                                child: Column(
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets
                                                                              .symmetric(
                                                                        vertical:
                                                                            10,
                                                                      ),
                                                                      child: Text(
                                                                          'High Frequency currents'),
                                                                    ),
                                                                    Container(
                                                                      height: 1,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ],
                                                                ),
                                                                value:
                                                                    'High Frequency currents',
                                                              ),
                                                              DropdownMenuItem(
                                                                child: Column(
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets
                                                                              .symmetric(
                                                                        vertical:
                                                                            10,
                                                                      ),
                                                                      child: Text(
                                                                          'Superficial Heating Modalities'),
                                                                    ),
                                                                    Container(
                                                                      height: 1,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ],
                                                                ),
                                                                value:
                                                                    'Superficial Heating Modalities',
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  : (subject ==
                                                              'Exercisetherapy' ||
                                                          year == '2nd Year')
                                                      ? Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          18.0),
                                                              child: Text(
                                                                "Select Topic",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 20,
                                                                ),
                                                              ),
                                                            ),
                                                            ListTile(
                                                              title:
                                                                  DropdownButton<
                                                                      String>(
                                                                iconEnabledColor:
                                                                    Colors
                                                                        .white,
                                                                elevation: 2,
                                                                value:
                                                                    exercisetherapyTopicDefaultValue,
                                                                dropdownColor:
                                                                    buttonColor,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                                onChanged:
                                                                    (value) {
                                                                  print(value);
                                                                  setState(() {
                                                                    exercisetherapyTopicDefaultValue =
                                                                        value!;
                                                                    topic =
                                                                        value;
                                                                  });
                                                                },
                                                                items: [
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Aim, techniques & Assessment'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Aim, techniques & Assessment',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Methods of testing'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Methods of testing',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Relaxation'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Relaxation',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Active & Passive movements'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Active & Passive movements',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('PNF'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'PNF',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Suspension Therapy'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Suspension Therapy',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Functional Re-education'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Functional Re-education',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(
                                                                              vertical: 10,
                                                                            ),
                                                                            child: Text('Aerobic Exercises')),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Aerobic Exercises',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Stretching'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Stretching',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Manual therapy & Mobilization'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Manual therapy & Mobilization',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Balance'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Balance',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text(' Co-ordination'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        ' Co-ordination',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Posture'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Posture',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Walking aids'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        ' Walking aids',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Massage'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Massage',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Individual & Group Exercise'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Individual & Group Exercise',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Hydrotherapy '),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Hydrotherapy ',
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(
                                                                            vertical:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Text('Introduction to Yoga'),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              1,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    value:
                                                                        'Introduction to Yoga',
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      : (subject ==
                                                              'General Medicine')
                                                          ? Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          18.0),
                                                                  child: Text(
                                                                    "Select Topic",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          20,
                                                                    ),
                                                                  ),
                                                                ),
                                                                ListTile(
                                                                  title:
                                                                      DropdownButton<
                                                                          String>(
                                                                    iconEnabledColor:
                                                                        Colors
                                                                            .white,
                                                                    elevation:
                                                                        2,
                                                                    value:
                                                                        generalmedicineTopicDefaultValue,
                                                                    dropdownColor:
                                                                        buttonColor,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                    onChanged:
                                                                        (value) {
                                                                      print(
                                                                          value);
                                                                      setState(
                                                                          () {
                                                                        generalmedicineTopicDefaultValue =
                                                                            value!;
                                                                        topic =
                                                                            value;
                                                                      });
                                                                    },
                                                                    items: [
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Infection'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Infection',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Poisoning'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Poisoning',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Food and Nutrition'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Food and Nutrition',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Endocrine Diseases'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Endocrine Diseases',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Diseases of Blood'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Diseases of Blood',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Diseases of Digestivesystem'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Diseases of Digestivesystem',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Cardiovascular Disease'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Cardiovascular Disease',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                                padding: const EdgeInsets.symmetric(
                                                                                  vertical: 10,
                                                                                ),
                                                                                child: Text('Respiratory Diseases')),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Respiratory Diseases',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Diseases of Skin'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Diseases of Skin',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Pediatrics'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Pediatrics',
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.symmetric(
                                                                                vertical: 10,
                                                                              ),
                                                                              child: Text('Psychiatric Disorders'),
                                                                            ),
                                                                            Container(
                                                                              height: 1,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        value:
                                                                            'Psychiatric Disorders',
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            )
                                                          : (subject ==
                                                                  'General Surgery')
                                                              ? Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              18.0),
                                                                      child:
                                                                          Text(
                                                                        "Select Topic",
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              20,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    ListTile(
                                                                      title: DropdownButton<
                                                                          String>(
                                                                        iconEnabledColor:
                                                                            Colors.white,
                                                                        elevation:
                                                                            2,
                                                                        value:
                                                                            generalsurgeryTopicDefaultValue,
                                                                        dropdownColor:
                                                                            buttonColor,
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white),
                                                                        onChanged:
                                                                            (value) {
                                                                          print(
                                                                              value);
                                                                          setState(
                                                                              () {
                                                                            generalsurgeryTopicDefaultValue =
                                                                                value!;
                                                                            topic =
                                                                                value;
                                                                          });
                                                                        },
                                                                        items: [
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('electrolyte/acid base disturbance'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'electrolyte/acid base disturbance',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('Reasons for surgery'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Reasons for surgery',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('Thoracic trauma situations'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Thoracic trauma situations',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('Surgical oncology'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Surgical oncology',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('disorders of chestwall,lungs,mediastinum'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'disorders of chestwall,lungs,mediastinum',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('Disorders of heart'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Disorders of heart',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('Thoracic surgery'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Thoracic surgery',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                    padding: const EdgeInsets.symmetric(
                                                                                      vertical: 10,
                                                                                    ),
                                                                                    child: Text('Diseases of arteries and veins')),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Diseases of arteries and veins',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('Common operations'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Common operations',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('Burn'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Burn',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('Women health'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Women health',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('ENT'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'ENT',
                                                                          ),
                                                                          DropdownMenuItem(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.symmetric(
                                                                                    vertical: 10,
                                                                                  ),
                                                                                  child: Text('Ophthalmology'),
                                                                                ),
                                                                                Container(
                                                                                  height: 1,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            value:
                                                                                'Ophthalmology',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              : (subject ==
                                                                      'Orthopaedics & Traumatology')
                                                                  ? Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(left: 18.0),
                                                                          child:
                                                                              Text(
                                                                            "Select Topic",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        ListTile(
                                                                          title:
                                                                              DropdownButton<String>(
                                                                            iconEnabledColor:
                                                                                Colors.white,
                                                                            elevation:
                                                                                2,
                                                                            value:
                                                                                orthopaedicsandtraumatologyTopicDefaultValue,
                                                                            dropdownColor:
                                                                                buttonColor,
                                                                            style:
                                                                                TextStyle(color: Colors.white),
                                                                            onChanged:
                                                                                (String? value) {
                                                                              print(value);
                                                                              setState(() {
                                                                                orthopaedicsandtraumatologyTopicDefaultValue = value!;
                                                                                topic = value;
                                                                              });
                                                                            },
                                                                            items: [
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Introduction'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Introduction',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Traumatology'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Traumatology',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Fractures and dislocations of upper limb'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Fractures and dislocations of upper limb',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Fracture of spine'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Fracture of spine',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Fractures and dislocations of lower limb'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Fractures and dislocations of lower limb',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Soft tissue injuries'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Soft tissue injuries',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Amputations'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Amputations',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                        padding: const EdgeInsets.symmetric(
                                                                                          vertical: 10,
                                                                                        ),
                                                                                        child: Text('Hand injuries')),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Hand injuries',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Traumatic spinal cord injuries'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Traumatic spinal cord injuries',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Deformities'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Deformities',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Diseases of bones and joints'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Diseases of bones and joints',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Inflammatory and degenerative conditions'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Inflammatory and degenerative conditions',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Syndromes'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Syndromes',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Neuromuscular disorders'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Neuromuscular disorders',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Cervical and lumbar pathology'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Cervical and lumbar pathology',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Orthopaedic surgeries'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Orthopaedic surgeries',
                                                                              ),
                                                                              DropdownMenuItem(
                                                                                child: Column(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(
                                                                                        vertical: 10,
                                                                                      ),
                                                                                      child: Text('Regional conditions'),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 1,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                value: 'Regional conditions',
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    )
                                                                  : (subject ==
                                                                          'Cardio Respiratory')
                                                                      ? Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 18.0),
                                                                              child: Text(
                                                                                "Select Topic",
                                                                                style: TextStyle(
                                                                                  color: Colors.white,
                                                                                  fontSize: 20,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            ListTile(
                                                                              title: DropdownButton<String>(
                                                                                itemHeight: 60,
                                                                                iconEnabledColor: Colors.white,
                                                                                elevation: 2,
                                                                                value: cardiorespiratoryTopicDefaultValue,
                                                                                dropdownColor: buttonColor,
                                                                                style: TextStyle(color: Colors.white),
                                                                                onChanged: (String? value) {
                                                                                  print(value);
                                                                                  setState(() {
                                                                                    cardiorespiratoryTopicDefaultValue = value!;
                                                                                    topic = value;
                                                                                  });
                                                                                },
                                                                                items: [
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Column(
                                                                                            children: [
                                                                                              Text('Anatomical & Physiological difference'),
                                                                                              Text('between adult and pediatric lung'),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Anatomical & Physiological difference',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Beside assessment of the patient'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Beside assessment of the patient',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Investigations and test '),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Investigations and test ',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('pt technique to increase lung volume'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'pt technique to increase lung volume',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Column(
                                                                                            children: [
                                                                                              Text('pt technique to decrease'),
                                                                                              Text('the work of breathing'),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'pt technique to decrease the work of breathing',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('pt technique to clear the secretions'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'pt technique to clear the secretions',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Drug therapy'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Drug therapy',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                            padding: const EdgeInsets.symmetric(
                                                                                              vertical: 10,
                                                                                            ),
                                                                                            child: Text('Management of wound ulcers')),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Management of wound ulcers',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Physiotherapy in dermatology'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Physiotherapy in dermatology',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Neonatal & pediatric pt'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Neonatal & pediatric pt',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('pt in obstetrics lung conditions'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'pt in obstetrics lung conditions',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('pt in restrictive lung conditions'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'pt in restrictive lung conditions',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Management of breathlessness'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Management of breathlessness',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Pulmonary rehabilitation'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Pulmonary rehabilitation',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('pt following lung surgery'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'pt following lung surgery',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Respiratory failure'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Respiratory failure',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Introduction to ICU'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Introduction to ICU',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Burn management'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Burn management',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('pt management following cardiac surgery'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'pt management following cardiac surgery',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Cardiac rehabilitation'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Cardiac rehabilitation',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('pt management following PVD'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'pt management following PVD',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Abdominal surgery'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Abdominal surgery',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Column(
                                                                                            children: [
                                                                                              Text('management of amputation '),
                                                                                              Text('following diabetes, PVD'),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'management of amputation following diabetes, PVD',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Column(
                                                                                            children: [
                                                                                              Text('pt intervention in management of'),
                                                                                              Text('medical,surgical,oncology cases'),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'pt intervention in management of medical,surgical,oncology cases',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Column(
                                                                                            children: [
                                                                                              Text('home program and education of'),
                                                                                              Text('family members in patient care'),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'home program and education of family members in patient care',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Physiotherapy in obstetrics'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Physiotherapy in obstetrics',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Column(
                                                                                            children: [
                                                                                              Text('Treatment, response to exercise and'),
                                                                                              Text('implications of pt in some disease conditions'),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Treatment, response to exercise and implications of pt in some disease conditions',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Health fitness and promotion'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Health fitness and promotion',
                                                                                  ),
                                                                                  DropdownMenuItem(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.symmetric(
                                                                                            vertical: 10,
                                                                                          ),
                                                                                          child: Text('Applied yoga in cardio-respiratory conditions'),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 1,
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    value: 'Applied yoga in cardio-respiratory conditions',
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        )
                                                                      : (subject == 'Orthopaedics and Sports Physiotherapy' ||
                                                                              year == '3rd Year')
                                                                          ? Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.only(left: 18.0),
                                                                                  child: Text(
                                                                                    "Select Topic",
                                                                                    style: TextStyle(
                                                                                      color: Colors.white,
                                                                                      fontSize: 20,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                ListTile(
                                                                                  title: DropdownButton<String>(
                                                                                    iconEnabledColor: Colors.white,
                                                                                    elevation: 2,
                                                                                    value: orthopaedicsandsportsphysiothrapyTopicDefaultValue,
                                                                                    dropdownColor: buttonColor,
                                                                                    style: TextStyle(color: Colors.white),
                                                                                    onChanged: (String? value) {
                                                                                      print(value);
                                                                                      setState(() {
                                                                                        orthopaedicsandsportsphysiothrapyTopicDefaultValue = value!;
                                                                                        topic = value;
                                                                                      });
                                                                                    },
                                                                                    items: [
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('PT Assessment'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'PT Assessment',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Fractures'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Fractures',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Specific Fractures and dislocations'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Specific Fractures and dislocations',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Selection and application'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Selection and application',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Principles of manualtherapy'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Principles of manualtherapy',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Degenerative and inflammatory conditions'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Degenerative and inflammatory conditions',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Infective conditions'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Infective conditions',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                                padding: const EdgeInsets.symmetric(
                                                                                                  vertical: 10,
                                                                                                ),
                                                                                                child: Text('Postural abnormalities of spine')),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Postural abnormalities of spine',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Deformities'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Deformities',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Cerebral palsy'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Cerebral palsy',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Poliomyelitis'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Poliomyelitis',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Leprosy'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Leprosy',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Amputations'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Amputations',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Spinal conditions'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Spinal conditions',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Effects of spinal Traction'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Effects of spinal Traction',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Osteoporosis'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Osteoporosis',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Orthopaedic surgeries'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Orthopaedic surgeries',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Shoulder Joint'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Shoulder Joint',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Elbow and forearm'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Elbow and forearm',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Wrist and hand'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Wrist and hand',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('HIP'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'HIP',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('KNEE'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'KNEE',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Ankle and Foot'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Ankle and Foot',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Introductions of Bioengineering'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Introductions of Bioengineering',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('Sports Physiotherapy'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'Sports Physiotherapy',
                                                                                      ),
                                                                                      DropdownMenuItem(
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                vertical: 10,
                                                                                              ),
                                                                                              child: Text('YOGA'),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 1,
                                                                                              color: Colors.white,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        value: 'YOGA',
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            )
                                                                          : (subject == 'Neurology and Neurosurgery')
                                                                              ? Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(left: 18.0),
                                                                                      child: Text(
                                                                                        "Select Topic",
                                                                                        style: TextStyle(
                                                                                          color: Colors.white,
                                                                                          fontSize: 20,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    ListTile(
                                                                                      title: DropdownButton<String>(
                                                                                        itemHeight: 60,
                                                                                        iconEnabledColor: Colors.white,
                                                                                        elevation: 2,
                                                                                        value: neurologyandneurosurgeryTopicDefaultValue,
                                                                                        dropdownColor: buttonColor,
                                                                                        style: TextStyle(color: Colors.white),
                                                                                        onChanged: (String? value) {
                                                                                          print(value);
                                                                                          setState(() {
                                                                                            neurologyandneurosurgeryTopicDefaultValue = value!;
                                                                                            topic = value;
                                                                                          });
                                                                                        },
                                                                                        items: [
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Anatomy in Neurology'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Anatomy in Neurology',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Neurological involvements in lesion'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Neurological involvements in lesion',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Neurological assessment & investigation'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Neurological assessment & investigation',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Neuro-Opthalmology'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Neuro-Opthalmology',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Deafness, vertigo & imbalance'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Deafness, vertigo & imbalance',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Lower cranial nerve paralysis'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Lower cranial nerve paralysis',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Cerebro-vascular disease'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Cerebro-vascular disease',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Head injury'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Head injury',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Column(
                                                                                                    children: [
                                                                                                      Text('Higher cortical,neuropsychological,'),
                                                                                                      Text('neuro-behavioral disorder'),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Higher cortical,neuropsychological,neuro-behavioral disorder',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Movement disorders'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Movement disorders',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Cerebellar & coordination disorders'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Cerebellar & coordination disorders',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Spinal cord disorders'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Spinal cord disorders',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Brain & spinal tumors'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Brain & spinal tumors',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Infections on brain & spinal cord'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Infections on brain & spinal cord',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Motor neuron disease'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Motor neuron disease',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Multiple sclerosis'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Multiple sclerosis',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Disorders of neuromuscular junction'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Disorders of neuromuscular junction',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Muscle disease'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Muscle disease',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Polyneuropathy'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Polyneuropathy',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Focal peripheral neuropathy'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Focal peripheral neuropathy',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Pediatric neurology'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Pediatric neurology',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text(' Toxic,metabolic and environmental disorders'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Toxic,metabolic and environmental disorders',
                                                                                          ),
                                                                                          DropdownMenuItem(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                    vertical: 10,
                                                                                                  ),
                                                                                                  child: Text('Neurosurgery'),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 1,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            value: 'Neurosurgery',
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                )
                                                                              : (subject == 'Neurophysiotherapy')
                                                                                  ? Column(
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsets.only(left: 18.0),
                                                                                          child: Text(
                                                                                            "Select Topic",
                                                                                            style: TextStyle(
                                                                                              color: Colors.white,
                                                                                              fontSize: 20,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        ListTile(
                                                                                          title: DropdownButton<String>(
                                                                                            itemHeight: 60,
                                                                                            iconEnabledColor: Colors.white,
                                                                                            elevation: 2,
                                                                                            value: neurophysiotherapyTopicDefaultValue,
                                                                                            dropdownColor: buttonColor,
                                                                                            style: TextStyle(color: Colors.white),
                                                                                            onChanged: (String? value) {
                                                                                              print(value);
                                                                                              setState(() {
                                                                                                neurophysiotherapyTopicDefaultValue = value!;
                                                                                                topic = value;
                                                                                              });
                                                                                            },
                                                                                            items: [
                                                                                              DropdownMenuItem(
                                                                                                child: Column(
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(
                                                                                                        vertical: 10,
                                                                                                      ),
                                                                                                      child: Text('Neurological assessment '),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      height: 1,
                                                                                                      color: Colors.white,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                value: 'Neurological assessment ',
                                                                                              ),
                                                                                              DropdownMenuItem(
                                                                                                child: Column(
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(
                                                                                                        vertical: 10,
                                                                                                      ),
                                                                                                      child: Text('Neurophysiological techniques'),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      height: 1,
                                                                                                      color: Colors.white,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                value: 'Neurophysiological techniques',
                                                                                              ),
                                                                                              DropdownMenuItem(
                                                                                                child: Column(
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(
                                                                                                        vertical: 10,
                                                                                                      ),
                                                                                                      child: Text('Pediatric neurology '),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      height: 1,
                                                                                                      color: Colors.white,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                value: 'Pediatric neurology ',
                                                                                              ),
                                                                                              DropdownMenuItem(
                                                                                                child: Column(
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(
                                                                                                        vertical: 10,
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        children: [
                                                                                                          Text('Evaluation & management :-'),
                                                                                                          Text('Brain & spinal cord disorders '),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      height: 1,
                                                                                                      color: Colors.white,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                value: 'Evaluation & management :- Brain & spinal cord disorders ',
                                                                                              ),
                                                                                              DropdownMenuItem(
                                                                                                child: Column(
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(
                                                                                                        vertical: 10,
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        children: [
                                                                                                          Text('Evaluation & management :-'),
                                                                                                          Text('cerebellar,  spinal cord & muscle disorders'),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      height: 1,
                                                                                                      color: Colors.white,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                value: 'Evaluation & management :- cerebellar,  spinal cord & muscle disorders',
                                                                                              ),
                                                                                              DropdownMenuItem(
                                                                                                child: Column(
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(
                                                                                                        vertical: 10,
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        children: [
                                                                                                          Text('Evaluation & management :-'),
                                                                                                          Text('peripheral nerve injuries & disorders '),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      height: 1,
                                                                                                      color: Colors.white,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                value: 'Evaluation & management :- peripheral nerve injuries & disorders ',
                                                                                              ),
                                                                                              DropdownMenuItem(
                                                                                                child: Column(
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(
                                                                                                        vertical: 10,
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        children: [
                                                                                                          Text(' Assessment & management of '),
                                                                                                          Text('neurological gaits'),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      height: 1,
                                                                                                      color: Colors.white,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                value: ' Assessment & management of neurological gaits',
                                                                                              ),
                                                                                              DropdownMenuItem(
                                                                                                child: Column(
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(
                                                                                                        vertical: 10,
                                                                                                      ),
                                                                                                      child: Text('Pre-post surgical treatment & assessment '),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      height: 1,
                                                                                                      color: Colors.white,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                value: 'Pre-post surgical treatment & assessment ',
                                                                                              ),
                                                                                              DropdownMenuItem(
                                                                                                child: Column(
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(
                                                                                                        vertical: 10,
                                                                                                      ),
                                                                                                      child: Text('Applied Yoga in neurological conditions'),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      height: 1,
                                                                                                      color: Colors.white,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                value: 'Applied Yoga in neurological conditions',
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    )
                                                                                  : (subject == 'Community Medicine')
                                                                                      ? Column(
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(left: 18.0),
                                                                                              child: Text(
                                                                                                "Select Topic",
                                                                                                style: TextStyle(
                                                                                                  color: Colors.white,
                                                                                                  fontSize: 20,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            ListTile(
                                                                                              title: DropdownButton<String>(
                                                                                                itemHeight: 60,
                                                                                                iconEnabledColor: Colors.white,
                                                                                                elevation: 2,
                                                                                                value: communitymedicineTopicDefaultValue,
                                                                                                dropdownColor: buttonColor,
                                                                                                style: TextStyle(color: Colors.white),
                                                                                                onChanged: (String? value) {
                                                                                                  print(value);
                                                                                                  setState(() {
                                                                                                    communitymedicineTopicDefaultValue = value!;
                                                                                                    topic = value;
                                                                                                  });
                                                                                                },
                                                                                                items: [
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Health & disease '),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Health & disease ',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Epidermology :-definition, principle & methods '),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Epidermology :-definition, principle & methods ',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Epidermology of communicable disease'),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Epidermology of communicable disease',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Public health administration '),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Public health administration ',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Health programmes in India'),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Health programmes in India',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Demography & family planning'),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Demography & family planning',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Column(
                                                                                                            children: [
                                                                                                              Text('Preventive medicine in obstetrics,'),
                                                                                                              Text('pediatrics & geriatrics'),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Preventive medicine in obstetrics, pediatrics & geriatrics',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Nutrition & health '),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Nutrition & health ',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Environment & health'),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Environment & health',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Hospital waste management'),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Hospital waste management',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Disaster management '),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Disaster management ',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Occupational health  '),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Occupational health  ',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Mental health'),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Mental health',
                                                                                                  ),
                                                                                                  DropdownMenuItem(
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.symmetric(
                                                                                                            vertical: 10,
                                                                                                          ),
                                                                                                          child: Text('Health education'),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 1,
                                                                                                          color: Colors.white,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    value: 'Health education',
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        )
                                                                                      : (subject == 'Community Based Rehabilitation')
                                                                                          ? Column(
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsets.only(left: 18.0),
                                                                                                  child: Text(
                                                                                                    "Select Topic",
                                                                                                    style: TextStyle(
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 20,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ListTile(
                                                                                                  title: DropdownButton<String>(
                                                                                                    itemHeight: 60,
                                                                                                    iconEnabledColor: Colors.white,
                                                                                                    elevation: 2,
                                                                                                    value: communitybasedrehabilitationTopicDefaultValue,
                                                                                                    dropdownColor: buttonColor,
                                                                                                    style: TextStyle(color: Colors.white),
                                                                                                    onChanged: (String? value) {
                                                                                                      print(value);
                                                                                                      setState(() {
                                                                                                        communitybasedrehabilitationTopicDefaultValue = value!;
                                                                                                        topic = value;
                                                                                                      });
                                                                                                    },
                                                                                                    items: [
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Rehabilitation'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Rehabilitation',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Community'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Community',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text(' Introduction of community based rehabilitation'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: ' Introduction of community based rehabilitation',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Principles of community based rehabilitation'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Principles of community based rehabilitation',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Planning and management of CBR programe'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Planning and management of CBR programe',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Disability'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Disability',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Disability evaluation'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Disability evaluation',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Role of government in CBR'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Role of government in CBR',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Role of social work in CBR'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Role of social work in CBR',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Role of voluntary organisations in CBR'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Role of voluntary organisations in CBR',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('National district level rehabilitation program'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'National district level rehabilitation program',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Role of physiotherapy in CBR'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Role of physiotherapy in CBR',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Column(
                                                                                                                children: [
                                                                                                                  Text('Screening and rehabilitation of'),
                                                                                                                  Text('paediatric disorders in the community'),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Screening and rehabilitation of paediatric disorders in the community',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Extension services and mobile units'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Extension services and mobile units',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Vocational training in rehabilitation'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Vocational training in rehabilitation',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Geriatrics'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Geriatrics',
                                                                                                      ),
                                                                                                      DropdownMenuItem(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                vertical: 10,
                                                                                                              ),
                                                                                                              child: Text('Industrial health and Ergonomics'),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              height: 1,
                                                                                                              color: Colors.white,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        value: 'Industrial health and Ergonomics',
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            )
                                                                                          : (subject == 'Research Methodology')
                                                                                              ? Column(
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.only(left: 18.0),
                                                                                                      child: Text(
                                                                                                        "Select Topic",
                                                                                                        style: TextStyle(
                                                                                                          color: Colors.white,
                                                                                                          fontSize: 20,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    ListTile(
                                                                                                      title: DropdownButton<String>(
                                                                                                        iconEnabledColor: Colors.white,
                                                                                                        elevation: 2,
                                                                                                        value: researchmethodologyTopicDefaultValue,
                                                                                                        dropdownColor: buttonColor,
                                                                                                        style: TextStyle(color: Colors.white),
                                                                                                        onChanged: (String? value) {
                                                                                                          print(value);
                                                                                                          setState(() {
                                                                                                            researchmethodologyTopicDefaultValue = value!;
                                                                                                            topic = value;
                                                                                                          });
                                                                                                        },
                                                                                                        items: [
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Introduction to research methodology'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Introduction to research methodology',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Research problem'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Research problem',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Research design'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Research design',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Sampling design'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Sampling design',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Measurement and scaling technique'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Measurement and scaling technique',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Methods of data collection'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Methods of data collection',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Sampling fundamental'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Sampling fundamental',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Processing and analysis of data'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Processing and analysis of data',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Testing of hypothesis'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Testing of hypothesis',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Computer technology'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Computer technology',
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                )
                                                                                              : Column(
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.only(left: 18.0),
                                                                                                      child: Text(
                                                                                                        "Select Topic",
                                                                                                        style: TextStyle(
                                                                                                          color: Colors.white,
                                                                                                          fontSize: 20,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    ListTile(
                                                                                                      title: DropdownButton<String>(
                                                                                                        iconEnabledColor: Colors.white,
                                                                                                        elevation: 2,
                                                                                                        value: biostatisticsTopicDefaultValue,
                                                                                                        dropdownColor: buttonColor,
                                                                                                        style: TextStyle(color: Colors.white),
                                                                                                        onChanged: (String? value) {
                                                                                                          print(value);
                                                                                                          setState(() {
                                                                                                            biostatisticsTopicDefaultValue = value!;
                                                                                                            topic = value;
                                                                                                          });
                                                                                                        },
                                                                                                        items: [
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Introduction'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Introduction',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Tabulation of data'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Tabulation of data',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Measure of central tendency'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Measure of central tendency',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Probability and standard distribution'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Probability and standard distribution',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Sampling techniques'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Sampling techniques',
                                                                                                          ),
                                                                                                          DropdownMenuItem(
                                                                                                            child: Column(
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(
                                                                                                                    vertical: 10,
                                                                                                                  ),
                                                                                                                  child: Text('Analysis of variance & covariance'),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  height: 1,
                                                                                                                  color: Colors.white,
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            value: 'Analysis of variance & covariance',
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Question",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: widget.maxLines * 24.0,
            child: TextField(
              maxLines: widget.maxLines,
              onChanged: (String value) {},
              controller: _questionEditingController,
              style: TextStyle(
                height: 1.2,
                color: Colors.black,
                fontSize: 18.0,
              ),
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter the Question...',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                contentPadding: EdgeInsets.only(
                  top: 20.0,
                  left: 10.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: MaterialButton(
          onPressed: () {
            if (_questionEditingController.text != '' &&
                _questionEditingController.text != ' ') {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: new Text('Confirm'),
                    content: new Text('Proceed?'),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15)),
                    actions: <Widget>[
                      new TextButton(
                        child: new Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {
                          _topicWiseQuestionsService.createTopicWiseQuestions(
                            year: year,
                            subject: subject,
                            topic: topic,
                            question: _questionEditingController.text,
                          );
                          Fluttertoast.showToast(
                              msg: 'UPLOADED SUCCESSFULLY !');
                          clearText();
                          Navigator.pop(context);
                        },
                      ),
                      new TextButton(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: buttonColor,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            } else {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: new Text('No Data'),
                    content: new Text(
                        'Please Check if all the feilds are filled...'),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15)),
                    actions: <Widget>[
                      new TextButton(
                        child: new Text(
                          "OK",
                          style: TextStyle(
                            color: buttonColor,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            }
          },
          height: 80,
          color: buttonColor,
          child: Text(
            "Upload",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
