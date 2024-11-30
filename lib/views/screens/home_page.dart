import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/button_menu_item.dart';
import 'information_screen.dart';
import 'voter_list_screen.dart';
import 'voterform_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routePath = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = screenHeight * 0.1;

    return Scaffold(
      backgroundColor:
          const Color(0xFFFCF4F4), // Warna latar belakang yang lebih cerah
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minHeight: screenHeight -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom,
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.0, padding, 16.0, padding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo dengan border dan bayangan
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/logo/logo_kpu.png",
                      height: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Judul utama dengan teks besar dan menarik
                  Text(
                    'Selamat Datang di KPU',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB43F3F),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Pilih menu yang Anda inginkan',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Button menu dengan animasi hover
                  ButtonMenuItem(
                    icon: Icons.info_outline,
                    title: 'Informasi Pemilihan Umum',
                    onTap: () {
                      Navigator.pushNamed(context, InformationScreen.routePath);
                    },
                  ),
                  const SizedBox(height: 24),
                  ButtonMenuItem(
                    icon: Icons.edit_document,
                    title: 'Form Data Calon Pemilih',
                    onTap: () {
                      Navigator.pushNamed(context, VoterFormScreen.routePath);
                    },
                  ),
                  const SizedBox(height: 24),
                  ButtonMenuItem(
                    icon: Icons.list_alt,
                    title: 'Lihat Data Calon Pemilih',
                    onTap: () {
                      Navigator.pushNamed(context, VoterListScreen.routePath);
                    },
                  ),
                  const SizedBox(height: 24),
                  ButtonMenuItem(
                    icon: Icons.logout,
                    title: 'Keluar',
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Konfirmasi'),
                          content:
                              const Text('Apakah Anda yakin ingin keluar?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Tidak'),
                            ),
                            TextButton(
                              onPressed: () {
                                SystemNavigator.pop();
                              },
                              child: const Text('Ya'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
