class Vaccine {
  final String name;
  final String description;
  final String imageAsset;
  final String url;

  Vaccine(
      {required this.name,
      required this.description,
      required this.imageAsset,
      required this.url});
}

final List<Vaccine> vaccineLists = [
  Vaccine(
    name: 'Sinovac',
    description: '''
      Vaksin Sinovac adalah vaksin untuk mencegah infeksi virus SARS-CoV-2 atau COVID-19. Vaksin Sinovac yang dikenal juga dengan nama CoronaVac sudah mendapat izin penggunaan darurat dari Badan Pengawas Obat dan Makanan (BPOM) RI.

      CoronaVac merupakan vaksin yang mengandung virus SARS-CoV-2 yang sudah tidak aktif. Penyuntikan vaksin Sinovac akan memicu sistem kekebalan tubuh untuk mengenali virus yang sudah tidak aktif ini dan memproduksi antibodi untuk melawannya sehingga tidak terjadi infeksi COVID-19.
    '''
        .trimLeft(),
    imageAsset: 'images/assets/sinovac.png',
    url: 'https://www.alodokter.com/vaksin-sinovac',
  ),
  Vaccine(
    name: 'Pfizer',
    description: '''
      Vaksin Pfizer atau BNT162b2 adalah vaksin untuk mencegah infeksi virus SARS-CoV-2 penyebab penyakit COVID-19. Vaksin Pfizer merupakan hasil kerja sama perusahaan bioteknologi Jerman, BioNTech dengan perusahaan farmasi asal Amerika, Pfizer. Vaksin ini mulai dikembangkan sejak tahun 2020.

      Vaksin Pfizer adalah vaksin mRNA (messenger RNA). Jenis vaksin ini akan memicu sistem sistem kekebalan tubuh membentuk spike protein, yang nantinya akan membantu tubuh membentuk antibodi yang dapat melawan virus Corona.
    '''
        .trimLeft(),
    imageAsset: 'images/assets/biofarma.png',
    url: 'https://www.alodokter.com/vaksin-pfizer',
  ),
  Vaccine(
    name: 'AstraZeneca',
    description: '''
      Vaksin AstraZeneca atau AZD1222 adalah vaksin untuk mencegah penyakit COVID-19. Vaksin ini merupakan hasil kerja sama antara Universitas Oxford dan AstraZeneca yang dikembangkan sejak Februari 2020.

      Vaksin AstraZeneca untuk COVID-19 telah menjalani uji klinis di Inggris, Brazil, dan Afrika Selatan. Vaksin ini memiliki nilai efikasi (efek perlindungan terhadap COVID-19) sebesar 63,09%.
    '''
        .trimLeft(),
    imageAsset: 'images/assets/astrazeneca.png',
    url: 'https://www.alodokter.com/vaksin-astrazeneca',
  ),
  Vaccine(
    name: 'Sinopharm',
    description: '''
        Vaksin Sinopharm adalah vaksin untuk mencegah infeksi virus Corona atau COVID-19. Vaksin Sinopharm ini direncanakan menjadi bagian dari vaksinasi mandiri atau vaksinasi gotong royong di Indonesia.

        Vaksin Sinopharm berisi virus Corona yang dimatikan (inactivated virus). Vaksin Sinopharm bekerja dengan cara memicu sistem kekebalan tubuh untuk menghasilkan antibodi yang dapat melawan virus Corona.
      '''
        .trimLeft(),
    imageAsset: 'images/assets/sinopharm.png',
    url: 'https://www.alodokter.com/vaksin-sinopharm',
  ),
  Vaccine(
    name: 'Moderna',
    description: '''
      Vaksin Moderna adalah vaksin untuk mencegah infeksi virus SARS-CoV-2 atau COVID-19. Vaksin Moderna atau mRNA-1273 dikembangkan sejak Januari 2020 oleh Moderna and Vaccine Research Center at the National Institute of Allergy and Infectious Disease (NIAID) di Amerika.

      Vaksin Moderna merupakan jenis vaksin mRNA (messenger RNA). Vaksin ini tidak menggunakan virus yang dilemahkan atau dimatikan, melainkan menggunakan komponen materi genetik yang membuat sistem kekebalan tubuh memproduksi spike protein. Protein tersebut merupakan bagian dari permukaan virus Corona.
   '''
        .trimLeft(),
    imageAsset: 'images/assets/moderna.png',
    url: 'https://www.alodokter.com/vaksin-moderna',
  )
];
