import 'package:flutter/material.dart';

Color colorWidget = const Color(0xFFF9B17A);
Color colorBackground = const Color(0xFF2d3250);
Color colorNotFavorite = Colors.grey;
Color colorFavorite = Colors.red;

int number_Item = 1;
List orderItems = [];
List compantName = [
  ["Apple", "assets/icons/apple.png"],
  ["Samsung", "assets/icons/samsung.png"],
  ["Huawei", "assets/icons/huawei.png"],
];
List OrdersUser = [];
List catalogCompanies = [iphoneInfo, samsungInfo, huaweiInfo];

List iphoneInfo = [
  [
    "Iphone 11",
    300,
    "https://mobizil.com/wp-content/uploads/2019/09/Apple-iPhone-11.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    "Iphone 12",
    600,
    "https://mobizil.com/wp-content/uploads/2020/10/Apple-iPhone-12.jpg",
    [Colors.white, Colors.blue, Colors.green, Colors.red]
  ],
  [
    "Iphone 12 pro",
    800,
    "https://mobizil.com/wp-content/uploads/2020/10/Apple-iPhone-12-Pro.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    "Iphone 13",
    700,
    "https://mobizil.com/wp-content/uploads/2021/09/IPhone-13.jpg",
    [Colors.white, Colors.black, Colors.red, Colors.purpleAccent]
  ],
  [
    "Iphone 11 pro ",
    700,
    "https://cdn.shortpixel.ai/spai/q_glossy+ret_img+to_webp/mobizil.com/wp-content/uploads/2019/09/iPhone-11-Pro-1.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.green]
  ],
  [
    "Iphone 13 Pro",
    900,
    "https://cdn.shortpixel.ai/spai/q_glossy+ret_img+to_webp/mobizil.com/wp-content/uploads/2021/09/iPhone-13-Pro-1.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red, Colors.purple]
  ]
];

List samsungInfo = [
  [
    "Galaxy A41",
    300,
    "https://telfonak.com/wp-content/uploads/2023/08/sama41.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    " Galaxy S22 Ultra",
    900,
    "https://mobizil.com/wp-content/uploads/2022/02/-Galaxy-S22-Ultra-5G.jpg",
    [
      const Color.fromARGB(255, 154, 139, 139),
      Colors.blue,
      Colors.black,
      Colors.red
    ]
  ],
  [
    " Galaxy S21 Ultra ",
    700,
    "https://cdn.shortpixel.ai/spai/q_glossy+ret_img+to_webp/mobizil.com/wp-content/uploads/2021/01/S21-Ultra-5G.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    " Galaxy S20 Ultra ",
    700,
    "https://bestpricegh.com/cdn/shop/products/s20-ultra_2048x2048.png?v=1582628263",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    " Galaxy Note 10 Plus",
    500,
    "https://m.media-amazon.com/images/I/41AH+9u1jxL._AC_.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ]
];

List huaweiInfo = [
  [
    "Huawei P30 Pro",
    250,
    "https://cdn.idealo.com/folder/Product/6515/3/6515359/s3_produktbild_gross/huawei-p30-pro-8gb-128gb-breathing-crystal.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red, Colors.blueGrey]
  ],
  [
    "Huawei P40 pro",
    500,
    "https://cdn.dxomark.com/wp-content/uploads/medias/post-43192/HUAWEI_P40_Pro_Silver_back-1024x725.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    "Huawei P50 Pro",
    800,
    "https://mobizil.com/wp-content/uploads/2022/03/Huawei-P50-Pro.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    "Huawei Nova 5",
    200,
    "https://cdn.salla.sa/BpEya/mtOFlBvIQAU0NuHYwcngQLnSnLVUTOgaCL3UQ3tS.jpg",
    [Colors.white, Colors.purple, Colors.black, Colors.red]
  ],
  [
    "Huawei Nova 7i",
    150,
    "https://alhafidh.com/cdn/shop/products/hwawei_nova7i_black_grande.jpg?v=1621063298",
    [Colors.white, Colors.purple, Colors.black, Colors.red]
  ],
  [
    "Huawei Nova 3e",
    120,
    "https://www.gizmochina.com/wp-content/uploads/2018/03/Huawei-Nova-3e-500x500.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.blueGrey]
  ]
];

List suggested_items = [
  [
    "Iphone 13",
    700,
    "https://mobizil.com/wp-content/uploads/2021/09/IPhone-13.jpg",
    [Colors.white, Colors.black, Colors.red, Colors.purpleAccent]
  ],
  [
    "Iphone 11 pro ",
    700,
    "https://cdn.shortpixel.ai/spai/q_glossy+ret_img+to_webp/mobizil.com/wp-content/uploads/2019/09/iPhone-11-Pro-1.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.green]
  ],
  [
    " Galaxy Note 10 Plus",
    500,
    "https://m.media-amazon.com/images/I/41AH+9u1jxL._AC_.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    "Iphone 12 pro",
    800,
    "https://mobizil.com/wp-content/uploads/2020/10/Apple-iPhone-12-Pro.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    " Galaxy S21 Ultra ",
    700,
    "https://cdn.shortpixel.ai/spai/q_glossy+ret_img+to_webp/mobizil.com/wp-content/uploads/2021/01/S21-Ultra-5G.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    "Huawei P40 pro",
    500,
    "https://cdn.dxomark.com/wp-content/uploads/medias/post-43192/HUAWEI_P40_Pro_Silver_back-1024x725.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    "Huawei Nova 5",
    200,
    "https://cdn.salla.sa/BpEya/mtOFlBvIQAU0NuHYwcngQLnSnLVUTOgaCL3UQ3tS.jpg",
    [Colors.white, Colors.purple, Colors.black, Colors.red]
  ],
  [
    "Iphone 11",
    300,
    "https://mobizil.com/wp-content/uploads/2019/09/Apple-iPhone-11.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
  [
    "Galaxy A41",
    300,
    "https://telfonak.com/wp-content/uploads/2023/08/sama41.jpg",
    [Colors.white, Colors.blue, Colors.black, Colors.red]
  ],
];

//void addItemSuggest() {
//  for (var i = 0; i < 2; i++) {
//    int count = 0;
//    int index = Random().nextInt(iphoneInfo.length);
//    suggested_items[count++] = iphoneInfo[index];
//    suggested_items[count++] = samsungInfo[index];
//    suggested_items[count++] = huaweiInfo[index];
//  }
//}
