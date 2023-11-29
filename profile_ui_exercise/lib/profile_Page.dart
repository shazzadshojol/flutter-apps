import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_ui_exercise/profile_Menu_Items.dart';

class Profile_page extends StatelessWidget {
  const Profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 11, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 11, 28),
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Your Profile',
          style: GoogleFonts.lato(color: Colors.white54, fontSize: 24),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Padding(padding: EdgeInsets.only(left: 15))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'John Rambo',
                style: GoogleFonts.lato(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: 10),
              Text(
                'johnrambo@example.com',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              Container(
                margin: EdgeInsets.all(15),
                alignment: Alignment.center,
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Upgrade to premium',
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 24),
                ),
              ),
              Column(
                children: [
                  Profile_Menu_Items(
                    text: 'Continue Shopping',
                    icon: Icons.shop,
                    arrowShown: true,
                  ),
                  Profile_Menu_Items(
                    text: 'View Your Cart',
                    icon: Icons.shopping_cart,
                    arrowShown: true,
                  ),
                  Profile_Menu_Items(
                    text: 'Checkout Now',
                    icon: Icons.shopping_cart_checkout_outlined,
                    arrowShown: true,
                  ),
                  Profile_Menu_Items(
                    text: 'Your Order History',
                    icon: Icons.history,
                    arrowShown: true,
                  ),
                  Profile_Menu_Items(
                    text: 'Shipping Address',
                    icon: Icons.home,
                    arrowShown: true,
                  ),
                  Profile_Menu_Items(
                    text: 'Update Profile',
                    icon: Icons.person,
                    arrowShown: true,
                  ),
                  Profile_Menu_Items(
                    text: 'Log Out',
                    icon: Icons.logout,
                    arrowShown: false,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
