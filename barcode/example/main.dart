// ignore_for_file: always_specify_types

import 'dart:io';
import 'package:barcode_image/barcode_image.dart';
import 'package:image/image.dart';

void buildBarcode(
  Barcode bc,
  String data, {
  String? filename,
  double? width,
  double? height,
  double? fontHeight,
}) {
  // Create an image
  final image = Image(128, 128);

  // Fill it with a solid color (white)
  fill(image, getColor(255, 255, 255));

  // Draw the barcode
  drawBarcode(image, bc, data, font: arial_24);

  filename ??= data
      .replaceAll(RegExp(r'\|'), '_')
      .replaceAll(RegExp(r'http.+\?p='), '')
      .toLowerCase();

  print(filename);

// Save the image
  File('./images/$filename.png').writeAsBytesSync(encodePng(image));

  /// Create the Barcode
  //final svg = bc.toSvg(
  //  data,
  //  width: width ?? 200,
  //  height: height ?? 80,
  //  fontHeight: fontHeight,
  //);
//
  // Save the image
  //filename ??= bc.name.replaceAll(RegExp(r'\s'), '-').toLowerCase();

  //File('$filename.svg').writeAsStringSync(svg);
}

void main() {
//  buildBarcode(
//    Barcode.code39(),
//    'CODE 39',
//  );
//
//  buildBarcode(
//    Barcode.code93(),
//    'CODE 93',
//  );
//
//  buildBarcode(
//    Barcode.code128(useCode128B: false, useCode128C: false),
//    'BARCODE\t128',
//    filename: 'code-128a',
//  );
//
//  buildBarcode(
//    Barcode.code128(useCode128A: false, useCode128C: false),
//    'Barcode 128',
//    filename: 'code-128b',
//  );
//
//  buildBarcode(
//    Barcode.code128(useCode128A: false, useCode128B: false),
//    '0123456789',
//    filename: 'code-128c',
//  );
//
//  buildBarcode(
//    Barcode.gs128(),
//    '(420)22345(56780000000001)',
//  );
//
//  buildBarcode(
//    Barcode.itf14(),
//    '1540014128876',
//  );
//
//  buildBarcode(
//    Barcode.itf16(),
//    '154001412887678',
//  );
//
//  buildBarcode(
//    Barcode.ean13(drawEndChar: true),
//    '590123412345',
//  );
//
//  buildBarcode(
//    Barcode.ean8(drawSpacers: true),
//    '9638507',
//    width: 100,
//  );
//
//  buildBarcode(
//    Barcode.ean2(),
//    '05',
//    width: 40,
//  );
//
//  buildBarcode(
//    Barcode.ean5(),
//    '52495',
//    width: 60,
//  );
//
//  buildBarcode(
//    Barcode.isbn(drawEndChar: true),
//    '978316148410',
//  );
//
//  buildBarcode(
//    Barcode.upcA(),
//    '98765432109',
//  );
//
//  buildBarcode(
//    Barcode.upcE(),
//    '06510000432',
//    width: 100,
//  );
//
//  buildBarcode(
//    Barcode.telepen(),
//    'Telepen',
//  );
//
//  buildBarcode(
//    Barcode.codabar(explicitStartStop: true),
//    'A1234-5678B',
//  );
//
//  buildBarcode(
//    Barcode.pdf417(),
//    'PDF417',
//    height: 30,
//  );
//
//  buildBarcode(
//    Barcode.dataMatrix(),
//    'Datamatrix',
//    height: 200,
//  );
//
//  buildBarcode(
//    Barcode.aztec(),
//    'Aztec',
//    height: 200,
//  );
//
//  buildBarcode(
//    Barcode.rm4scc(),
//    'RM4SCC',
//    height: 50,
//    fontHeight: 30,
//  );
//
//  buildBarcode(
//    Barcode.itf(),
//    '987234',
//  );
  final codes = [
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41190577044618004680650030005407651427626932|2|1|1|67DBCC882E5827246AB0F6AD1CEB433D099D9B0C',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41190912103208000115650010000256341000846876|2|1|1|3031C1F7C7D1A1C9C4363C668F02444003374EA2',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41210800063960003388650080001456211420738027|2|1|1|1656334ea2a6ef3a41f5a7a1756708e5f1fd450c',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41211276189406002250651010003094181271424079|2|1|1|0CAE34D1BC7C5B194D46A87C0B0079F3AB80FE0B',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41211278116670000670650340004917991006172265|2|1|1|159EBAA1D5180A882110B52EAC66F30A5E643F39',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220100063960003388650080001603651160736622|2|1|1|c7293f17bf8401fe689c821c35e009ff864fad79',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220100063960003388650090001473111405185062|2|1|1|d3d0140171ca8c865ff8f3cb9a6927791bee559f',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220100063960003388650120001548011683552235|2|1|1|2050f7253958ac9730b211c1c884ae905bcf2133',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220106216655000188650060297391521038295525|2|1|1|0ea676ccc5baa1d493e027e5ee82249e3f2cc386',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220108035554000136650020002786561204813291|2|1|1|334BCE9F50D8C357CB6FC27368E71997A1E815B1',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220142525511000177650010000486331631692907|2|1|1|AF2F34D17FDB649D003D08A829496135E3573A96',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220176189406002250651070001946451081227139|2|1|1|A41C39D73E5A3D49D9B21BCA5942FB92080435A1',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220178116670000670650420005404841003882317|2|1|1|21BC420E3CF9D87E9CAF4C4996DF82F1C358454E',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220178116670000912650340004694011001661190|2|1|1|75ABB3860C3C2F8EB268732FE04425CC4A68ADA1',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220178116670000912650350005493271004355280|2|1|1|733B8242AAA79A791C0650F35025D7AD0F6CAF68',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220200063960003388650070001297441524165478|2|1|1|b77b9d463727c2470d8a78797c9bbf53323ee45a',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220276189406002250651060002776781261341301|2|1|1|7F15D3F2F1D75D716C4934CB9210799E811B8B48',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220276189406002250651100003114351032100465|2|1|1|B09679BF9E249A9187678B31E764099AF66BDF57',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220278116670000670650310005325431005160386|2|1|1|6B8F372F06840FB546A6DE07751178CFF531E639',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220278116670000670650340005016121004632481|2|1|1|9DA4CED6FF0BAAD26A2DA660F9A03CFF7F9F2163',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220278116670000670650480001204091001651813|2|1|1|2CF74E8057A3D7F81200EF37F83D8EA15A9EFCA6',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220278116670000670650490001243771004376790|2|1|1|BE32BA613D55E065042B545E5933DB5F5BBFB10F',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220278116670000670650490001244031008691579|2|1|1|C502C6D50BE84A5F3CB625FBDD528833C35895F0',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220278116670000831650520000426921004244021|2|1|1|581F92CF9B62EFE142679D3D311FCB5C337ECF62',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220278116670000912650320001010471001719336|2|1|1|8E121A5B1B49DE732A03506B3CB031FC69D3A434',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220278116670001307650160000810241002589924|2|1|1|BE1681F27A6BD75A2A12CFCF6E20EC1DA4CDCC68',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220300063960003388650040001058291985470420|2|1|1|5f2e10e351b9ea8d6ea434e4abeeb96fb7eb8307',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220300063960003388650080001647811393396647|2|1|1|bc07dcbc0712f2f73a65243ceffe022ba1df414b',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220300063960003388650090001505741352954431|2|1|1|af838ee92af306742f0b052c8e740c5197bf7e84',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220300063960003388650110001322211260349082|2|1|1|fe8e9ee57a3c8be32adecbff706898b7c925bb4f',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220308035554000136650020003120731139102003|2|1|1|8EE24A11FA41276655A9D271CF2D8B0ED53706D1',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220312103208000115650010000413751001342552|2|1|1|FE97F60B3D68D56D445BA071B5B24515438CFB75',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220376189406002250651010003200791051808024|2|1|1|E3DFFCEBA43D61A5B36585D3366008714BA13C59',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220376189406002250651010003222841181654019|2|1|1|28E8E3CE70291C245CE76CE6D4F3D72D30066F8F',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220376189406002250651010003231821251449502|2|1|1|625EE4AFAF576597EFD188C5DED9FC310BECD8AF',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220376189406005861651060000681431100757025|2|1|1|C201DD3C12E0903CBFC4D435F81BD8F4FB119E1E',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220377044618004680650020006448611589624640|2|1|1|AE364B85B162761C1AB2317DAA6EF98FC1E450CD',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220378116670000670650310005443841002978483|2|1|1|FD30F733E026DADB4A0AA9239C19EA7C2991ADDF',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220378116670000670650460001394211004206080|2|1|1|808EB2EADAD6742B1EC7E0743BAFD68EC0640103',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220378116670000670650470001092701000761355|2|1|1|E8E58EA854E231EF2A9E05484A7AD54AB5B6B4C8',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220378116670000670650490001271391005692659|2|1|1|58ECEAB281A0D92CC37A6CE035AAB835A1F9ED6D',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220378116670000670650490001282611000842513|2|1|1|95EF29C53C7E4173F5C9DFB7FA844AF7985FF795',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220378116670000831650350006144991001317156|2|1|1|CE0607A9A8E875A7BE1EDD5A5288B315394A6289',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220378116670000831650520000440711008880780|2|1|1|489398AFDA07E4CA35222CFF170B0625124F535D',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220400063960003388650050001140531360068474|2|1|1|bd6b320b3078f781a1ce21be0a144b3e7e6a8063',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220400063960003388650070001333651837977481|2|1|1|fa0ac9225b35dee1f7698a097cf028990d0f1b10',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220400063960003388650110001365031758155020|2|1|1|cbf1d98ed6f3b8ff2554409f440e540dc0dfcd45',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220400063960003388650120001603171158989692|2|1|1|20db3876fb4c766987353bb517288c098af4a2c7',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220408035554000136650020003315921168264872|2|1|1|F040B9B9CA82EE6AD7592050A80E5ED0CEB2E9A1',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220412103208000115650010000416481001350426|2|1|1|0FDC4C7D99E24CF118B45731C866BF1F2BD6DA06',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220444884386000117650010000089951032401510|2|1|1|CA5A6E482DE0D35B42EB31E4E162FA6E3DE7DA38',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220476189406002250651010003252701091645209|2|1|1|016925C2232E0306716F8A06580F275E90140AE3',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220476189406002250651020003214791141509367|2|1|1|9A19362A0BE6DFD2E00E67BA72E081B5D6D267C8',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220476189406002250651020003222101201726300|2|1|1|60AB4DF14C1FFD5A356475DF15DBD2B1B7C8A7E6',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220478116670000670650310005478401001939832|2|1|1|7EF85519D0AC048BB432F1D8D8BC84D5CBA0FE14',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220478116670000670650470001104281007388203|2|1|1|26D9C258AA6DCD281C67C835F567154D0CB9CB0C',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220478116670000670650490001334181000039103|2|1|1|5E9BC28441E462DC9E2326AB84AD30F2A7DA4E02',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220478116670000670650490001342131006825167|2|1|1|909F8ABDA228B4539CAE45DBD56CBDCCFDFB3A26',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220478116670000831650490002220781007387934|2|1|1|F626AD47B6F04DB9F816D9BAA399F48A7062699C',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220478116670000831650540000364761004521076|2|1|1|A7F1B66ED2BD9742AB94E991F41C47D9C5706F0B',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220478116670000831650540000364771000135055|2|1|1|CB34095FBD37876C1733893D3BC61BC694B89531',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220478116670000912650350005651741008965324|2|1|1|B10AB23E480192E525E3E2F608D65F6D672F1277',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220479430682017955650530002350091440867880|2|1|2|DC90B395FB9F167ADCA2E05A404C0795AFF97FCD',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220479430682017955650530002354741540319281|2|1|2|0FFEF97CB527EEBE221CA15D6052B0275BB6C39D',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220479430682017955650530002359811247307781|2|1|2|F9CCA0AF3E2CC3F9396267B98FC436DEBF40B905',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220481748055000500650810000787521480381971|2|1|1|a95033ba057c0ffa8ce880e088da9b35e349de6c',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220578116670000670650460001437741006641410|2|1|1|5C7AE0C3EDE807BD2B7478945FD76354F0196327',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220578116670000670650460001437931007801930|2|1|1|CE93AD7A418FB9E518F0DCB5ED8AC435D8A692DD',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220500063960003388650180000330231560766557|2|1|1|7512a83c3e7bad2fb715b1f4e34ea7d660ed54c4',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220578116670000670650320002560871002454380|2|1|1|8C37EF2CC200A2E47331121C1C9E220CE2B937C2',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41210900450648000240650000000096301005840111|2|1|1|5299CE32854A895A857DB44A010EBCF51ABB478D',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41210579430682017955650520000860811577736710|2|1|2|D693BA1018F9A403C149EBBAC910BC2E7FB9E039',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41210300450648000240650000000010471004963712|2|1|1|50341B607A24D0B96A6407B6477A39B23D6BB9B4',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41210479430682017955650520000830661582047060|2|1|2|367750053E6BBEF5115A15A7C57B9774DAFB8B3B',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220578116670000670650490001362561003001694|2|1|1|3AEEE9CD01CC4CC9B3B6A49CAD5BB18D9971DAE4',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220576189406002250651080003111981141656499|2|1|1|67798032730DB235EBC0087304BC4A723C25A8C6',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220578116670000670650490001373051005717671|2|1|1|1B46C574251BA6D3A18128293EFD5B07D3B4CD5C',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220578116670000831650490002257321005531686|2|1|1|93CC6E9D9CB99D9273368507431DEA7C0E52694D',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220579430682017955650510000932541866157076|2|1|2|F8A2195D9BA65CF5F49A5B76B6806F09C397D998',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220583646984009670651070001344021826199640|2|1|1|A3A4B5C0ED4F02F061EA9C2E8DC90896A1CA1479',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220578116670000670650490001384811004078162|2|1|1|15E12E91FEABABB943792BD6696DCF737353C69D',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220579430682017955650520001658561783510105|2|1|2|A884DC5ABCCEF147D16F084C8FD36948269EFB2B',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220576189406005861651120000628711002536787|2|1|1|5707A92800E570F09D493E55103A0126F9CC1B76',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220508035554000136650020003480031954058406|2|1|1|8571D3905F253E1A29042E6241C9B1009938BE16',
    'http://www.fazenda.pr.gov.br/nfce/qrcode?p=41220500063960003388650120001658241228515323|2|1|1|a58228ce7ed002cb88459edd74437a74798733d9',
  ];

  for (var i = 0; i < codes.length; i++) {
    buildBarcode(
      Barcode.qrCode(),
      codes[i],
    );
  }
}
