import 'package:flutter/material.dart';
import '../../app/constants/colors.dart';

class InformationScreen extends StatelessWidget {
  static const String routePath = '/information';

  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar latar belakang dengan opacity
          Opacity(
            opacity: 0.3, // tingkat opacity
            child: Image.asset(
              'assets/logo/bg.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          // Konten utama
          SafeArea(
            child: Scaffold(
              backgroundColor:
                  Colors.transparent, // Membuat latar belakang transparan
              appBar: AppBar(
                backgroundColor: AppColors.background,
                title: const Text(
                  'Informasi Pemilihan Umum',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoSection(
                        title: 'Tentang Pemilu',
                        icon: Icons.info_outline,
                        content:
                            'Pemilihan umum (Pemilu) adalah proses demokratis di mana warga negara memilih wakil atau pemimpin untuk menduduki jabatan tertentu, baik di tingkat lokal, nasional, maupun internasional.'
                            ' Pemilu memungkinkan masyarakat untuk berpartisipasi dalam menentukan kebijakan pemerintahan melalui hak suara mereka. Ada beberapa jenis pemilihan umum berdasarkan kriteria berikut:\n'
                            '1. Pemilu Legislatif: Pemilu untuk memilih anggota legislatif, seperti DPR, DPRD, atau Senat. Pemilih memilih calon anggota dewan yang akan mewakili mereka di lembaga legislatif.\n'
                            '2. Pemilu Presiden dan Wakil Presiden: Pemilu untuk memilih presiden dan wakil presiden yang akan memimpin negara.\n'
                            '3. Pemilu Kepala Daerah: Pemilu untuk memilih gubernur, bupati, atau wali kota di tingkat daerah.\n'
                            '4. Pemilu Lokal: Pemilu yang dilakukan untuk memilih pemimpin atau perwakilan di tingkat lokal, seperti kepala desa atau anggota dewan perwakilan daerah setempat.\n'
                            'Pemilu biasanya dilakukan dengan cara yang adil, terbuka, dan langsung, di mana setiap warga negara yang memenuhi syarat dapat memberikan suara secara bebas.',
                      ),
                      const SizedBox(height: 20),
                      _buildInfoSection(
                        title: 'Syarat Pemilih',
                        icon: Icons.check_circle_outline,
                        content: '1. Warga Negara Indonesia\n'
                            '2. Berusia minimal 17 tahun atau sudah/pernah menikah\n'
                            '3. Tidak sedang dicabut hak pilihnya\n'
                            '4. Terdaftar sebagai pemilih\n'
                            '5. Bukan anggota TNI/POLRI aktif',
                      ),
                      const SizedBox(height: 20),
                      _buildInfoSection(
                        title: 'Tahapan Pemilu',
                        icon: Icons.timeline,
                        content: '1. Pendaftaran Pemilih\n'
                            '2. Pencalonan\n'
                            '3. Kampanye\n'
                            '4. Masa Tenang\n'
                            '5. Pemungutan Suara\n'
                            '6. Penghitungan Suara\n'
                            '7. Penetapan Hasil',
                      ),
                      const SizedBox(height: 20),
                      _buildInfoSection(
                        title: 'Dokumen yang Diperlukan',
                        icon: Icons.document_scanner,
                        content: '1. KTP Elektronik\n'
                            '2. Kartu Keluarga\n'
                            '3. Surat Keterangan/Surat Undangan memilih dari Dinas Kependudukan (jika diperlukan)',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection(
      {required String title,
      required String content,
      required IconData icon}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
            0.8), // Memberikan efek transparansi pada background container
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Color(0xffB43F3F),
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffB43F3F),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
