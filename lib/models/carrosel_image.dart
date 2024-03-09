class Carrosel {
  final String image;
  final String title_1;
  final String title_2;

  Carrosel({String? image, String? title_1, String? title_2})
      : image = image ?? '',
        title_1 = title_1 ?? '',
        title_2 = title_2 ?? '';
}