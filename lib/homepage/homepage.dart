import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/loginpage/login_page.dart';
import 'package:login_page/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  final List<String> items = [
    "Alexander",
    "Benjamin",
    "Christopher",
    "David",
    "Ethan",
    "Gabriel",
    "Henry",
    "Isabella",
    "Alexander",
    "Benjamin",
    "Christopher",
    "David",
    "Ethan",
    "Gabriel",
    "Henry",
    "Isabella",
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(244, 243, 182, 234),
        automaticallyImplyLeading: false,
        title:
            Text('HomePage', style: GoogleFonts.roboto(color: Colors.blueGrey)),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      title: const Text("Logout"),
                      content: const Text('Are you sure want to logout?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              logout(context);
                            },
                            child: const Text('Yes')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('No'))
                      ],
                    );
                  });
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.grey,
            ),
            tooltip: 'Logout',
          )
        ],
      ),
      body: Stack(children: [
        Image.asset(
          'assets/images/main_top.png',
          width: 200,
          height: 200,
          fit: BoxFit.fill,
        ),
        Positioned(
            bottom: 0, // Position at the bottom of the screen
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/login_bottom.png',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            )),
        ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            thickness: 3.5,
          ),
          itemBuilder: (context, index) {
            final isCircle = index.isEven;
            return ListTile(
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    //  shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                    borderRadius: isCircle
                        ? BorderRadius.circular(100)
                        : BorderRadius.circular(5),
                    color: Colors.black),
                child: isCircle
                    ? ClipOval(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/IMG_5706.png',
                          fit: BoxFit.fill,
                        ))
                    : Image.asset(
                        'assets/images/download.jpg',
                        fit: BoxFit.fill,
                      ),
              ),
              title: Text(
                items[index],
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            );
          },
          itemCount: items.length,
        ),
      ]),
    );
  }

  void logout(BuildContext context) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    // await sharedPrefs.setBool(saveKey, false);
    await sharedPrefs.clear();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginPage()),
        (route) => false);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Logout succesfully'),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
    ));
  }
}
