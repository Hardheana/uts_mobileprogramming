import 'package:flutter/material.dart';
import 'package:doa_harian/DetailPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, String>> myData = [
    {
      'title': '1. DOA SEBELUM TIDUR',
      'subtitle': 'بِسْمِكَ االلّٰهُمَّ اَحْيَا وَبِاسْمِكَ اَمُوْتُ',
      'terjemahan': 'Dengan menyebut nama Allah, aku hidup dan aku mati', 
    },
    {
      'title': '2. DOA SESUDAH TIDUR',
      'subtitle': 'اَلْحَمْدُ ِللهِ الَّذِىْ اَحْيَانَا بَعْدَمَآ اَمَاتَنَا وَاِلَيْهِ النُّشُوْرُ',
      'terjemahan': 'Segala puji bagi Allah yang telah menghidupkan kami sesudah kami mati (membangunkan dari tidur) dan hanya kepada-Nya kami dikembalikan ',
    },
    {
      'title': '3. DOA MASUK KAMAR MANDI',
      'subtitle': 'اَللّٰهُمَّ اِنّىْ اَعُوْذُبِكَ مِنَ الْخُبُثِ وَالْخَبَآئِثِ ',
      'terjemahan': 'Ya Allah, aku berlindung pada-Mu dari godaan setan laki-laki dan setan perempuan',
    },
    {
      'title': '4. DOA KELUAR KAMAR MANDI',
      'subtitle': 'غُفْرَانَكَ الْحَمْدُ ِللهِ الَّذِىْ اَذْهَبَ عَنّى اْلاَذَى وَعَافَانِىْ',
      'terjemahan': 'Dengan mengharap ampunanMu, segala puji milik Allah yang telah menghilangkan kotoran dari badanku dan yang telah menyejahterakan',
    },
    {
      'title': '5. DOA KETIKA BERCERMIN',
      'subtitle': 'اَلْحَمْدُ ِللهِ كَمَا حَسَّنْتَ خَلْقِىْ فَحَسِّـنْ خُلُقِىْ',
      'terjemahan': 'Segala puji bagi Allah, baguskanlah budi pekertiku sebagaimana Engkau telah membaguskan rupa wajahku',
    },
    {
      'title': '6. DOA KELUAR RUMAH',
      'subtitle': 'بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ لاَحَوْلَ وَلاَقُوَّةَ اِلاَّ بِالله',
      'terjemahan': 'Dengan menyebut nama Allah aku bertawakal kepada Allah, tiada daya kekuatan melainkan dengan pertolongan Allah',
    },
    {
      'title': '7. DOA MASUK RUMAH',
      'subtitle': 'اَللّٰهُمَّ اِنّىْ اَسْأَلُكَ خَيْرَالْمَوْلِجِ وَخَيْرَالْمَخْرَجِ بِسْمِ اللهِ وَلَجْنَا وَبِسْمِ اللهِ خَرَجْنَا وَعَلَى اللهِ رَبّنَا تَوَكَّلْنَا',
      'terjemahan': ' Ya Allah, sesungguhnya aku mohon kepada-Mu baiknya tempat masuk dan baiknya tempat keluar dengan menyebut nama Allah kami masuk, dan dengan menyebut nama Allah kami keluar dan kepada Allah Tuhan kami, kami bertawakkal',
    },
    {
      'title': '8. DOA MEMOHON ILMU YANG BERMANFAAT',
      'subtitle': 'اَللّٰهُمَّ اِنِّى اَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا طَيِّبًا وَعَمَلاً مُتَقَبَّلاً',
      'terjemahan': 'Ya Allah, sesungguhnya aku mohon kepada-Mu ilmu yang berguna, rezki yang baik dan amal yang baik Diterima',
    },
    {
      'title': '9. DOA SEBELUM BELAJAR',
      'subtitle': 'يَارَبِّ زِدْنِىْ عِلْمًا وَارْزُقْنِىْ فَهْمًا',
      'terjemahan': 'Ya Allah, tambahkanlah aku ilmu dan berikanlah aku rizqi akan kepahaman '
    },
    {
      'title': '10. DOA SESUDAH BELAJAR',
      'subtitle': 'اَللّٰهُمَّ اِنِّى اِسْتَوْدِعُكَ مَاعَلَّمْتَنِيْهِ فَارْدُدْهُ اِلَىَّ عِنْدَ حَاجَتِىْ وَلاَ تَنْسَنِيْهِ يَارَبَّ الْعَالَمِيْنَ',
      'terjemahan': 'Ya Allah, sesungguhnya aku menitipkan kepada Engkau ilmu-ilmu yang telah Engkau ajarkan kepadaku, dan kembalikanlah kepadaku sewaktu aku butuh kembali dan janganlah Engkau lupakan aku kepada ilmu itu wahai Tuhan seru sekalian alam'
    },
    {
      'title': '11. DOA SEBELUM WUDHU',
      'subtitle': 'نَوَيْتُ الْوُضُوْءَ لِرَفْعِ الْحَدَثِ اْلاَصْغَرِ فَرْضًا لِلّٰهِ تَعَالَى',
      'terjemahan': 'Saya niat berwudhu untuk menghilangkan hadast kecil fardu (wajib) karena Allah taala',
    },
    {
      'title': '12. DOA SETELAH WUDHU',
      'subtitle': 'اَشْهَدُ اَنْ لاَّاِلَهَ اِلاَّاللهُ وَحْدَهُ لاَشَرِيْكَ لَهُ وَاَشْهَدُ اَنَّ مُحَمَّدًاعَبْدُهُ وَرَسُوْلُهُ. اَللّٰهُمَّ اجْعَلْنِىْ مِنَ التَّوَّابِيْنَ وَاجْعَلْنِىْ مِنَ الْمُتَطَهِّرِيْنَ، وَجْعَلْنِيْمِنْ عِبَادِكَ الصَّالِحِيْنَ',
      'terjemahan': 'Aku bersaksi, tidak ada Tuhan selain Allah Yang Maha Esa, tidak ada sekutu bagi-Nya, dan aku mengaku bahwa Nabi Muhammad itu adalah hamba dan Utusan Allah. Ya Allah, jadikanlah aku dari golongan orang-orang yang bertaubat dan jadikanlah aku dari golongan orang-orang yang suci dan jadikanlah aku dari golongan hamba-hamba Mu yang shaleh',
    },
    {
      'title': '13. DOA SEBELUM BEPERGIAN',
      'subtitle': 'اَللّٰهُمَّ هَوِّنْ عَلَيْنَا سَفَرَنَا هَذَا وَاطْوِعَنَّابُعْدَهُ اَللّٰهُمَّ اَنْتَ الصَّاحِبُ فِى السَّفَرِوَالْخَلِيْفَةُفِى الْاَهْلِ',
      'terjemahan': 'Ya Allah, mudahkanlah kami berpergian ini, dan dekatkanlah kejauhannya. Ya Allah yang menemani dalam berpergian, dan Engkau pula yang melindungi keluarga',
    },
    {
      'title': '14. DOA UNTUK KEDUA ORANGTUA',
      'subtitle': 'اَللّهُمَّ اغْفِرْلِيْ وَلِوَالِدَيَّ وَارْحَمْهُمَاكَمَارَبَّيَانِيْ صَغِيْرَا',
      'terjemahan': 'Wahai Tuhanku, ampunilah aku dan kedua orang tuaku (Ibu dan Bapakku), sayangilah mereka seperti mereka menyayangiku di waktu kecil',
    },
    {
      'title': '15. DOA SEBELUM MAKAN',
      'subtitle': 'اللَّهُمَّ بَارِكْ لَناَ فِيْمَا رَزَقْتَنا وَقِنَا عَذَابَ النَّارِ',
      'terjemahan': 'Ya Allah, berkahilah kami pada apa yang telah Engkau karuniakan dan lindungilah kami dari siksa neraka',
    },
    {
      'title': '16. DOA SESUDAH MAKAN',
      'subtitle': 'اَلْحَمْدُ ِللهِ الَّذِىْ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِيْنَ',
      'terjemahan': 'Segala puji bagi Allah yang telah memberi kami makan dan minum serta menjadikan kami termasuk dari kaum muslimin',
    },
    {
      'title': '17. DOA MENGENAKAN PAKAIAN',
      'subtitle': 'الْحَمْدُ لِلَّهِ الَّذِي كَسَانِي هَذَا الثوْبَ وَرَزَقَنيْهِ مِنْ غَيْرِ حَوْلٍ مِنيِّ وَلَا قُوَّةٍ',
      'terjemahan': 'Segala puji bagi Allah yang telah menganugrahkan pakaian ini kepadaku, tanpa ada daya serta kekuatan dariku',
    },
    {
      'title': '18. DOA MELEPAS PAKAIAN',
      'subtitle': 'بِاسْمِ اللهِ',
      'terjemahan': 'Dengan menyebut nama Allah',
    },
    {
      'title': '19. DOA MENDAPATKAN MIMPI INDAH',
      'subtitle': 'اَلْحَمْدُ ِللهِ الَّذِيْ قَطْلَ الْحَاجَتِ',
      'terjemahan': 'Segala puji bagi Allah yang telah memberi hajatku',
    },
    {
      'title': '20. DOA MENDAPATKAN MIMPI BURUK',
      'subtitle': 'اَللّٰهُمَّ إِنّىِ أَعُوْذُ بِكَ مِنْ عَمَلِ الشَّيْطَانِ وَسَيِّئاَتِ اْلأَحْلاَمِ',
      'terjemahan': 'ya allah, sesungguhnya aku mohon perlindungan kepada engkau dari perbuatan setan dan dari mimpi-mimpi yang buruk',
    },
    {
      'title': '21. DOA MENJELANG SUBUH',
      'subtitle': 'اَللّٰهُمَّ اِنِّى اَعُوْذُ بِكَ مِنْ ضِيْقِ الدُّنْيَا وَضِيْقِ يَوْمِ الْقِيَامَةِ',
      'terjemahan': 'ya Allah! Sesungguhnya aku berlindung kepadamu dari kesempitan dunia dan kesempitan hari kiamat',
    },
    {
      'title': '22. DOA SAAT BERSIN',
      'subtitle': 'اَلْحَمْدُ ِللهِ',
      'terjemahan': 'semoga allah memberi rahmat kepadamu',
    },
    {
      'title': '23. DOA MENDENGAR ORANG BERSIN',
      'subtitle': 'يَهْدِيْكُمُ اللهُ وَيَصْلِحُ بَالَكُمً',
      'terjemahan': 'semoga Allah memberi petunjuk kepadamu dan membaguskan keadaanmu',
    },
    {
      'title': '24. DOA SAAT LUPA MEMBACA DOA MAKAN',
      'subtitle': 'بِسْمِ اللهِ فِىِ أَوَّلِهِ وَآخِرِهِ',
      'terjemahan': 'Dengan menyebut nama allah pada awal dan akhirnya',
    },
    {
      'title': '25. DOA MASUK MASJID',
      'subtitle': 'اَللّهُمَّ افْتَحْ لِيْ اَبْوَابَ رَحْمَتِكَ',
      'terjemahan': 'wahai tuhanku, bukakanlah untukku pintu-pintu rahmat-mu',
    },
    {
      'title': '26. DOA KELUAR MASJID',
      'subtitle': 'اَللّهُمَّ اِنِّيْ أسْأَلُكَ مِنْ فَضْلِكَ',
      'terjemahan': 'wahai tuhanku, sesungguhnya aku memohon kepada mu akan segala keutamaan-mu',
    },
    {
      'title': '27. DOA NAIK KENDARAAN DARAT',
      'subtitle': 'سُبْحَانَ الَّذِىْ سَخَّرَلَنَا هَذَا وَمَاكُنَّالَهُ مُقْرِنِيْنَ وَاِنَّآ اِلَى رَبّنَا لَمُنْقَلِبُوْنَ',
      'terjemahan': 'Maha suci Allah yang memudahkan ini (kendaraan) bagi kami dann tiada kami mempersekutukan bagi-nya, dan sesungguhnya kami akan kembali kepada tuhan kami',
    },
    {
      'title': '28. DOA NAIK KENDARAAN LAUT',
      'subtitle': 'بِسْمِ اللهِ مَجْرَهَا وَمُرْسَهَآ اِنَّ رَبّىْ لَغَفُوْرٌرَّحِيْمٌ',
      'terjemahan': 'dengan nama Allah yang menjalankan kendaraan ini berlayar dan berlabuh sesungguhnya tuhanku maha pemaaf lagi pengasih',
    },
    {
      'title': '29. DOA SELAMAT DUNIA AKHIRAT',
      'subtitle': 'رَبَّنَا أَتِنَا فِى الدُّنْيَا حَسَنَةً وَفِي اْلأَخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ',
      'terjemahan': 'ya tuhan kami, berilah kami kebaikan hidup di dunia dan kebaikan hidup di akhirat, dan jagalah kami dari siksa api neraka',
    },
    {
      'title': '30. DOA SAAT SAMPAI TEMPAT TUJUAN',
      'subtitle': 'اَلْحَمْدُ ِللهِ الَّذِى سَلَمَنِى وَالَّذِى اَوَنِى وَالَّذِى جَمَعَ الشَّمْلَ بِ',
      'terjemahan': 'segala puji bagi Allah, yang telah menyelamatkan aku dan yang telah melindungiku dan yang mengumpulkanku dengan keluargaku',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kumpulan Doa Harian'),
      ),
      body: ListView.builder(
        itemCount: myData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(myData[index]['title']!),
            subtitle: Text(myData[index]['subtitle']!),
            leading: CircleAvatar(
              child: Text(myData[index]['title']![0]),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Beralih ke halaman detail item
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(itemData: myData[index])),
              );
            },
          );
        },
      ),
    );
  }
}
