import 'package:flutter/material.dart';
import 'package:hospital/features/cases/medical_section/measurement/veiw/view.dart';
import 'package:hospital/features/cases/medical_section/record/view/view.dart';
import 'package:hospital/features/cases/select_person/view/view.dart';

// ignore: must_be_immutable
class CaseDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CaseDetailsState();
  }
}

class _CaseDetailsState extends State<CaseDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Case Details',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
              indicator: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.green,
              ),
              tabs: [
                _myContainer(
                  title: 'Case',
                ),
                _myContainer(
                  title: 'Record',
                ),
                _myContainer(
                  title: 'Measurement',
                ),
              ]),
        ),
        backgroundColor: Colors.white,
        body: _bodyWidget(context),
      ),
    );
  }
}

_bodyWidget(context) {
  return Column(
    children: [
      Expanded(
        child: TabBarView(children: [
          _caseTab(context),
          _recordTab(context),
          _measurementTab(context),
        ]),
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            onPressed: () {},
            child: Text(
              'End Case',
            ),
          )),
    ],
  );
}

_caseTab(context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      _textInfo(),
      _textInfo(),
      _textInfo(),
      _textInfo(),
      _textInfo(),
      _textInfo(),
      _textInfo(),
      SizedBox(
        height: 7,
      ),
      Row(
        children: [
          SizedBox(
            width: 7,
          ),
          Text(
            'Case Description:',
          ),
        ],
      ),
      SizedBox(
        height: 7,
      ),
      Container(
        margin: EdgeInsets.symmetric(
          horizontal: 7,
        ),
        child: Text(
          'DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 ',
        ),
      ),
      SizedBox(
        height: 7,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectPerson(),
                ),
              );
            },
            child: Text(
              '+ Add Nurse',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              bool isSelected = true;
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.all(
                            7 + 7,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  isSelected = true;
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: isSelected == true
                                            ? Colors.green
                                            : Colors.grey),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Medical record',
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  isSelected = false;
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: isSelected == false
                                            ? Colors.green
                                            : Colors.grey),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Medical measurement',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => isSelected == true
                                    ? MedicalRecord()
                                    : MedicalMeasurement(),
                              ),
                            );
                          },
                          child: Text(
                            'Request',
                          ),
                        ),
                      ],
                    );
                  });
            },
            child: Text(
              'Request',
            ),
          ),
        ],
      ),
    ],
  );
}

_measurementTab(context) {
  return Column(
    children: [
      ListTile(
        leading: Image.asset(
          'assets/images/daidris7.jpg',
          fit: BoxFit.cover,
        ),
        title: Text(
          'DAIDRIS7',
        ),
        subtitle: Text(
          'Specialist-Nurse',
        ),
        trailing: Text(
          '7/7/7777',
        ),
      ),
      SizedBox(
        height: 7,
      ),
      Container(
          child: Text(
        'Details Note:DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 ',
      )),
      Row(
        children: [
          Text(
            'Medical Record',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 7,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Blood Pressure',
          ),
          Text(
            '120',
          ),
        ],
      ),
      SizedBox(height: 7),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sugar Analyze',
          ),
          Text(
            '129',
          ),
        ],
      ),
    ],
  );
}

_recordTab(context) {
  return Column(
    children: [
      ListTile(
        leading: Image.asset(
          'assets/images/daidris7.jpg',
          fit: BoxFit.cover,
        ),
        title: Text(
          'DAIDRIS7',
        ),
        subtitle: Text(
          'Specialist-Nurse',
        ),
        trailing: Text(
          '7/7/7777',
        ),
      ),
      SizedBox(
        height: 7,
      ),
      Container(
          child: Text(
        'Details Note:DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 ',
      )),
      Row(
        children: [
          Text(
            'Medical Record',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 7,
      ),
      Row(
        children: [
          Text(
            'Blood Pressure',
          ),
        ],
      ),
      SizedBox(height: 7),
      Row(
        children: [
          Text(
            'Sugar Analyze',
          ),
        ],
      ),
      SizedBox(
        height: 7,
      ),
      Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
          ),
        ],
      ),
    ],
  );
}

_myContainer({title}) {
  return Container(
    margin: EdgeInsets.all(7),
    child: Text(
      title,
      maxLines: 1,
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

_textInfo() {
  return Container(
    margin: EdgeInsets.all(
      7,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'DAIDRIS7',
        ),
        Text(
          'GOAT',
        ),
      ],
    ),
  );
}
