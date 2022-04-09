import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['id', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String idText = '',
    String enText = '',
  }) =>
      [idText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // splashScreen
  {
    'zat0ssv2': {
      'id': 'Home',
      'en': '',
    },
  },
  // onboarding
  {
    '3k43tvne': {
      'id': 'Benefit Menjadi Mitra',
      'en': '',
    },
    'bswkhzaa': {
      'id': 'Pet Shop & Groomers Mandiri',
      'en': '',
    },
    'fpxc71lu': {
      'id':
          'Dapatkan penghasilan tambahan dengan menjadi Mitra & Atur sendiri kapan, dimana, dan berapa banyak pelanggan yang akan dilayani',
      'en': '',
    },
    'tdc68tq9': {
      'id': 'Login',
      'en': '',
    },
    '9oq6o5yc': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // loginPage
  {
    'x8e4wieq': {
      'id': 'Masuk Sebagai Mitra',
      'en': '',
    },
    '6tqir5xl': {
      'id':
          'Pefita membutuhkan verifikasi nomor telepon Mitra untuk memberikan pelayanan terbaik',
      'en': '',
    },
    '623mwub5': {
      'id': 'Masukkan email',
      'en': '',
    },
    'bzdn1uh7': {
      'id': 'Masukkan email',
      'en': '',
    },
    '9pwi5yii': {
      'id': 'Masukkan email',
      'en': '',
    },
    'x9uuxpkq': {
      'id': 'Masukkan Password',
      'en': '',
    },
    'pbug8kaa': {
      'id': 'Masukkan Password',
      'en': '',
    },
    'txmv0n0k': {
      'id': 'Masukkan Password',
      'en': '',
    },
    'rwenl7y1': {
      'id': 'Lupa Password ?',
      'en': '',
    },
    'rwpl7viq': {
      'id': 'Reset Password',
      'en': '',
    },
    'ymxbkqfe': {
      'id': 'Masuk',
      'en': '',
    },
    'srchmqtc': {
      'id': 'Masuk dengan akun sosial media',
      'en': '',
    },
    'pyqfh8kh': {
      'id': 'Lanjutkan dengan Facebook',
      'en': '',
    },
    '7sgz198e': {
      'id': 'Lanjutkan dengan Google',
      'en': '',
    },
    '3y71wtfh': {
      'id': 'Lanjutkan dengan Twitter',
      'en': '',
    },
    'iynuhsf2': {
      'id':
          'Dengan masuk, Anda menyetujui Syarat & Ketentuan serta Privasi Pefita.',
      'en': '',
    },
    '2kp9ogrb': {
      'id': 'Field is required',
      'en': '',
    },
    'zjj5x9oo': {
      'id': 'Home',
      'en': '',
    },
  },
  // verifikasiOTP
  {
    'r8nu766e': {
      'id': 'Verifikasi OTP',
      'en': '',
    },
    '8r8udxeq': {
      'id':
          'Kode Verifikasi telah dikirimkan melalui email yang telah didaftarkan',
      'en': '',
    },
    'juyp8bqy': {
      'id': '[Some hint text...]',
      'en': '',
    },
    'q04jbq62': {
      'id': '_  _  _  _',
      'en': '',
    },
    '88ynnaqq': {
      'id': 'Selanjutnya',
      'en': '',
    },
    '1ntv24z5': {
      'id': 'Mohon tunggu dalam 59 Detik untuk',
      'en': '',
    },
    '5gusyhz3': {
      'id': 'Kirim ulang',
      'en': '',
    },
    'r7p5k68g': {
      'id': 'Home',
      'en': '',
    },
  },
  // resetPasswordPage
  {
    'qhpcps7u': {
      'id': 'Kamu Lupa Password?',
      'en': '',
    },
    '3xd0ytfr': {
      'id':
          'Silakan masukkan kata sandi baru untuk akun Anda, jangan lupa untuk menuliskan atau mengingat kata sandi terbaru Anda',
      'en': '',
    },
    '4h9fw6f5': {
      'id': 'Masukkan Password Baru',
      'en': '',
    },
    'sil2ngqy': {
      'id': 'Masukkan Password Baru',
      'en': '',
    },
    'e2ks3ski': {
      'id': 'Masukkan Password Baru',
      'en': '',
    },
    'm70w04b5': {
      'id': 'Masukkan Ulang Password',
      'en': '',
    },
    'lvn6d1im': {
      'id': 'Masukkan Ulang Password',
      'en': '',
    },
    'oku9t3wc': {
      'id': 'Masukkan Ulang Password',
      'en': '',
    },
    '4ndm1bsl': {
      'id': 'Selanjutnya',
      'en': '',
    },
    'k257pxyv': {
      'id': 'Sudah mempunyai akun?',
      'en': '',
    },
    '5p2ej1z8': {
      'id': 'Masuk',
      'en': '',
    },
    '5ufdtrwk': {
      'id':
          'Dengan masuk atau mendaftar, Anda menyetujui Syarat & Ketentuan serta Privasi Pefita.',
      'en': '',
    },
    '2cqw8r6m': {
      'id': 'Field is required',
      'en': '',
    },
    '50gapast': {
      'id': 'Home',
      'en': '',
    },
  },
  // lupaPasswordPage
  {
    'ss8c7g1l': {
      'id': 'Kamu Lupa Password?',
      'en': '',
    },
    'qf285olk': {
      'id':
          'Silakan masukkan kata sandi baru untuk akun Anda, jangan lupa untuk menuliskan atau mengingat kata sandi terbaru Anda',
      'en': '',
    },
    'fgkigr3r': {
      'id': 'Masukkan Email Anda',
      'en': '',
    },
    'a7ffngfe': {
      'id': '[Some hint text...]',
      'en': '',
    },
    '8te9bijz': {
      'id': 'Selanjutnya',
      'en': '',
    },
    'vi5xkzka': {
      'id': 'Sudah mempunyai akun?',
      'en': '',
    },
    'we21cd3w': {
      'id': 'Login',
      'en': '',
    },
    'v266owl8': {
      'id':
          'Dengan masuk atau mendaftar, Anda menyetujui Syarat & Ketentuan serta Privasi Pefita.',
      'en': '',
    },
    'zyliqmtm': {
      'id': 'Field is required',
      'en': '',
    },
    'sywe9n59': {
      'id': 'Home',
      'en': '',
    },
  },
  // dashboardMitra
  {
    'uop4dmym': {
      'id': 'Hai Mitra Pefita',
      'en': '',
    },
    '4d2rmexr': {
      'id': 'Jakarta',
      'en': '',
    },
    's073jlml': {
      'id': 'Status Tugas',
      'en': '',
    },
    'irarf17p': {
      'id': 'Hari ini',
      'en': '',
    },
    'e03e5psv': {
      'id': 'Layanan Alo Vet',
      'en': '',
    },
    '1pd7wx8m': {
      'id': 'Ringkasan Layanan ',
      'en': '',
    },
    'xqjrqdkd': {
      'id': 'Doctor on Demand',
      'en': '',
    },
    '168li0dg': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'k7ecvl44': {
      'id': 'Grooming on Demand',
      'en': '',
    },
    'xk2qhmge': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'csdtfqp8': {
      'id': 'Pet Catering',
      'en': '',
    },
    '0r9nd3mb': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'g3r8i5dd': {
      'id': 'Beranda',
      'en': '',
    },
  },
  // daftarMitra
  {
    '8myrs7i4': {
      'id': 'Daftar Sebagai Mitra',
      'en': '',
    },
    '5pl2vmog': {
      'id':
          'Pefita membutuhkan verifikasi nomor telepon Mitra untuk memberikan pelayanan terbaik',
      'en': '',
    },
    '473w9m23': {
      'id': 'Masukkan email',
      'en': '',
    },
    'py77jrt7': {
      'id': 'Masukkan email',
      'en': '',
    },
    'o5afnblt': {
      'id': 'Masukkan email',
      'en': '',
    },
    'y935iz8i': {
      'id': 'Masukkan Password',
      'en': '',
    },
    'h8ih58nn': {
      'id': 'Masukkan Password',
      'en': '',
    },
    'b61edja3': {
      'id': 'Masukkan Password',
      'en': '',
    },
    'azxi3f09': {
      'id': 'Masukkan Ulang Password',
      'en': '',
    },
    'be1b2ydw': {
      'id': 'Masukkan Ulang Password',
      'en': '',
    },
    '3cqqo8ov': {
      'id': 'Masukkan Password',
      'en': '',
    },
    'kedjdp4s': {
      'id': 'Lupa Password ?',
      'en': '',
    },
    'sahejm8y': {
      'id': 'Reset Password',
      'en': '',
    },
    'vuvpwz5i': {
      'id': 'Daftar',
      'en': '',
    },
    '1affixh0': {
      'id': 'Masuk dengan akun sosial media',
      'en': '',
    },
    'mdr6nb9a': {
      'id': 'Lanjutkan dengan Facebook',
      'en': '',
    },
    'ghqmtpc9': {
      'id': 'Lanjutkan dengan Google',
      'en': '',
    },
    'pligzinc': {
      'id': 'Lanjutkan dengan Twitter',
      'en': '',
    },
    'el8t8cx0': {
      'id': 'Sudah Mempunyai Akun?',
      'en': '',
    },
    'h4nymok1': {
      'id': 'Masuk',
      'en': '',
    },
    'wnhbmap4': {
      'id':
          'Dengan masuk, Anda menyetujui Syarat & Ketentuan serta Privasi Pefita.',
      'en': '',
    },
    '5u8ih7l8': {
      'id': 'Field is required',
      'en': '',
    },
    '8nnceijt': {
      'id': 'Home',
      'en': '',
    },
  },
  // dashboardTransaksi
  {
    'f830tuon': {
      'id': 'Hai Mitra Pefita',
      'en': '',
    },
    'e620oiim': {
      'id': 'Jakarta',
      'en': '',
    },
    'owcj67ox': {
      'id': 'Status Tugas',
      'en': '',
    },
    't6jkuzn4': {
      'id': 'Hari ini',
      'en': '',
    },
    'h0wnwoto': {
      'id': 'Layanan Alo Vet',
      'en': '',
    },
    '6ure2mv3': {
      'id': 'Ringkasan Layanan ',
      'en': '',
    },
    'frgihyco': {
      'id': 'Doctor on Demand',
      'en': '',
    },
    'ik3sw28e': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'of66u0ip': {
      'id': 'Grooming on Demand',
      'en': '',
    },
    '2shc9m9m': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'fthfz17r': {
      'id': 'Pet Catering',
      'en': '',
    },
    'pp6s0yuv': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'xv2cuka5': {
      'id': 'Transaksi',
      'en': '',
    },
  },
  // dashboardPesan
  {
    'uvr03p52': {
      'id': 'Hai Mitra Pefita',
      'en': '',
    },
    'w8qxpg4x': {
      'id': 'Jakarta',
      'en': '',
    },
    'wh77mdo7': {
      'id': 'Status Tugas',
      'en': '',
    },
    '4wgnif03': {
      'id': 'Hari ini',
      'en': '',
    },
    'xn6g6fe6': {
      'id': 'Layanan Alo Vet',
      'en': '',
    },
    '4yglvwk5': {
      'id': 'Ringkasan Layanan ',
      'en': '',
    },
    '1n9za0x2': {
      'id': 'Doctor on Demand',
      'en': '',
    },
    'uhkn7zsl': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'iaji3cm4': {
      'id': 'Grooming on Demand',
      'en': '',
    },
    'ukhm0d5e': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'om7jqadv': {
      'id': 'Pet Catering',
      'en': '',
    },
    'xzjwdi9b': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    '84ud8mr4': {
      'id': 'Pesan',
      'en': '',
    },
  },
  // dashboardAkun
  {
    'zeyy87uj': {
      'id': 'Hai Mitra Pefita',
      'en': '',
    },
    'm249egwp': {
      'id': 'Jakarta',
      'en': '',
    },
    '4jmy6xp8': {
      'id': 'Status Tugas',
      'en': '',
    },
    'twv3ytj2': {
      'id': 'Hari ini',
      'en': '',
    },
    'vse9oox6': {
      'id': 'Layanan Alo Vet',
      'en': '',
    },
    '9c438up7': {
      'id': 'Ringkasan Layanan ',
      'en': '',
    },
    '3f9t9802': {
      'id': 'Doctor on Demand',
      'en': '',
    },
    't2i8c0qk': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'b1rnxgwn': {
      'id': 'Grooming on Demand',
      'en': '',
    },
    'dncdi63t': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    '63hbxf5o': {
      'id': 'Pet Catering',
      'en': '',
    },
    'z32dqtlk': {
      'id': 'Ringkasan Layanan',
      'en': '',
    },
    'y56n2hp3': {
      'id': 'Pesanan hari ini',
      'en': '',
    },
    'jcoupj36': {
      'id': 'Lorem ipsum dolor...',
      'en': '',
    },
    'vuyn2wms': {
      'id': 'Lorem ipsum dolor...',
      'en': '',
    },
    '7mxlgsto': {
      'id': 'Lorem ipsum dolor...',
      'en': '',
    },
    'z60tdh4l': {
      'id': 'Lorem ipsum dolor...',
      'en': '',
    },
    'w4i281fv': {
      'id': 'Lorem ipsum dolor...',
      'en': '',
    },
    '5ld4rnad': {
      'id': 'Lorem ipsum dolor...',
      'en': '',
    },
    'wz8xhea5': {
      'id': 'Lorem ipsum dolor...',
      'en': '',
    },
    '7gol1lz0': {
      'id': 'Lorem ipsum dolor...',
      'en': '',
    },
    'te6w75ac': {
      'id': 'Akun',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'nfp8mdze': {
      'id': '',
      'en': '',
    },
    'h7zoranq': {
      'id': '',
      'en': '',
    },
    'mkkmq4we': {
      'id': '',
      'en': '',
    },
    'hg7qvxua': {
      'id': '',
      'en': '',
    },
    'ncxydbhg': {
      'id': '',
      'en': '',
    },
    '4cvdoayh': {
      'id': '',
      'en': '',
    },
    'efu9wxnd': {
      'id': '',
      'en': '',
    },
    'swietv63': {
      'id': '',
      'en': '',
    },
    're4seusf': {
      'id': '',
      'en': '',
    },
    'y95qu4io': {
      'id': '',
      'en': '',
    },
    'kvopuflt': {
      'id': '',
      'en': '',
    },
    '88jxqc40': {
      'id': '',
      'en': '',
    },
    'ty6zi3s5': {
      'id': '',
      'en': '',
    },
    '97wfg3iq': {
      'id': '',
      'en': '',
    },
    'k1hhva8s': {
      'id': '',
      'en': '',
    },
    '15bqrj2z': {
      'id': '',
      'en': '',
    },
    'jdii7mu4': {
      'id': '',
      'en': '',
    },
    '9xt25rgy': {
      'id': '',
      'en': '',
    },
    'l94ramis': {
      'id': '',
      'en': '',
    },
    '96z3aj9y': {
      'id': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
