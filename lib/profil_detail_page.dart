import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: const Color.fromARGB(255, 255, 68, 68),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            _buildInfoCard('Nama', 'Albertus Radya Winny Putra'),
            _buildInfoCard('Fakultas', 'Ilmu Komputer'),
            _buildInfoCard('Jurusan', 'Teknik Informatika'),
            _buildInfoCard('Tanggal Lahir', '12 Agustus 2005'),
            _buildInfoCard('Email', '230103086@mhs.udb.ac.id'),
            _buildInfoCard('Alamat', 'Purwoprajan Rt 04 Rw 29, Jebres, Jebres, Surakarta'),
            _buildInfoCard(
                'Tentang Saya',
                'Perkenalkan nama saya Albertus Radya Winny Putra, saya biasa dipanggil Albert. '
                    'Hobi saya bermain futsal dan sepak bola. Saya berkuliah di Universitas Duta Bangsa Surakarta. '
                    'Tujuan saya berkuliah adalah untuk memperoleh ilmu dan menjadi orang sukses di masa depan.'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String content) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white, // Latar belakang putih agar bersih
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 68, 68)),
          ),
          const SizedBox(height: 5),
          Text(
            content,
            style: const TextStyle(fontSize: 15, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
