import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final userSpecialist;

  const ProfileInfo({super.key, required this.userSpecialist});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          'My Profile',
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: _bodyWidget(context, userSpecialist),
    );
  }
}

_bodyWidget(context, userSpecialist) {
  return SafeArea(
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7 + 7 + 7 + 7),
          ),
          padding: EdgeInsets.only(
              left: 7 + 7 + 7 + 7,
              top: 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7),
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: MediaQuery.of(context).size.height * 0.1),
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            children: [
              _iconText(
                iconData: Icons.local_hospital,
                info: 'Specialist - $userSpecialist',
              ),
              _iconText(
                iconData: Icons.male,
                info: 'Male',
              ),
              _iconText(
                iconData: Icons.calendar_month,
                info: '7-7-7777',
              ),
              _iconText(
                iconData: Icons.location_on,
                info: 'Sudan,Omdurman',
              ),
              _iconText(
                iconData: Icons.favorite_outline_sharp,
                info: 'Single',
              ),
              _iconText(
                iconData: Icons.email,
                info: 'daidris7@gmail.com',
              ),
              _iconText(
                iconData: Icons.phone_iphone,
                info: '0922818514',
              )
            ],
          ),
        ),
        Positioned(
          left: 140,
          top: 30,
          child: Column(
            children: [
              CircleAvatar(
                radius: 47,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(
                    'assets/images/daidris7.jpg',
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'DAIDRIS7',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

_iconText({
  IconData? iconData,
  String? info,
}) {
  return TextButton(
    child: Row(
      children: [
        Icon(iconData ?? Icons.favorite, color: Colors.greenAccent),
        SizedBox(
          width: 7 + 7,
        ),
        Text(
          info ?? 'DAIDRIS7',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    ),
    onPressed: () {},
  );
}
