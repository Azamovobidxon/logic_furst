void main() {
  double usunlik = 23;
  double eni = 14;

  double perimetri = 2 * (usunlik + eni);

  double usa = usunlik * eni;
  print('to\'g\ri to\'rtburchakning perimetri  $perimetri');
  print('to\'g\ri to\'rtburchakning usa $usa');

  print((3 + 11 + 17 + 23 + 5) / 5);

  double radious = 10;

  double pi = 3.1416;

  double sirtYuzi = 4 * pi * radious * radious;

  print('sharning sirtini yuzasi $sirtYuzi');

  double vHajmi = 4 / 3 * pi * radious * radious * radious;
  print('Sharning hajmi $vHajmi');

  double davomatFoizi = 0.20;
  double uyVazifasi = 0.30;
  double imTihonFoizi = 0.50;

  double daVOmatBall = 90;
  double uyVazifasiBall = 80;
  double imTihonBall = 94;

  double umumiyBaho = (daVOmatBall * davomatFoizi) +
      (uyVazifasiBall * uyVazifasi) +
      (imTihonBall * imTihonFoizi);

  int yaxlitlanganBaho = umumiyBaho.round();

  print("Yaxlitlangan Umumiy Baho $yaxlitlanganBaho");
}
