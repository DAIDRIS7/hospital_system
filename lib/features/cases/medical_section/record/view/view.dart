import 'package:flutter/material.dart';

class MedicalRecord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Medical Record',
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(
              'assets/images/daidris7.jpg',
            ),
            title: Text(
              'DAIDRIS7',
            ),
            subtitle: Text(
              'Specialist-Doctor',
            ),
            trailing: Text(
              '7/7/7777',
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'SGOT,SGPT',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ESR',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Lipid Profile',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(
                  7,
                ),
                child: Text(
                  'Add Medical Record',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/icons/upload.jpg',
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Upload Image',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
