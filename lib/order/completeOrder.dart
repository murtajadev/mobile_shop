// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_shop/homePage/homePage.dart';
import 'package:mobile_shop/modul/modul.dart';
import 'package:mobile_shop/order/displayItemOrder.dart';

class OrderPage extends StatefulWidget {
  const OrderPage(
      {super.key,
      required this.namePhone,
      required this.price,
      required this.imagePhone,
      required this.colorItem});
  final String namePhone;
  final int price;
  final String imagePhone;
  final Color colorItem;
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  TextEditingController nameUser = TextEditingController();
  TextEditingController phoneNumberUser = TextEditingController();
  TextEditingController locationUser = TextEditingController();
  TextEditingController anyNoteFromUser = TextEditingController();
  GlobalKey<FormState> stateForm = GlobalKey();
  List order = [];
  double? totalPrice;
  @override
  void initState() {
    number_Item = 1;
    totalPrice ??= (widget.price).toDouble();
    super.initState();
  }

  @override
  void dispose() {
    nameUser.dispose();
    phoneNumberUser.dispose();
    locationUser.dispose();
    anyNoteFromUser.dispose();
    super.dispose();
  }

  // ignore: non_constant_identifier_names
  void AddTotalPrice() {
    setState(() {
      number_Item = number_Item + 1;
      totalPrice = (widget.price * number_Item).toDouble();
    });
  }

  // ignore: non_constant_identifier_names
  void SubTotalPrice() {
    if (number_Item > 1) {
      setState(() {
        number_Item = number_Item - 1;
        totalPrice = (widget.price * number_Item).toDouble();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height / 80),
          child: Form(
            key: stateForm,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                DisplayOrder(
                  namePhone: widget.namePhone,
                  imagePhone: widget.imagePhone,
                  price: widget.price,
                  colorItem: widget.colorItem,
                  onPressAdd: AddTotalPrice,
                  onPressSub: SubTotalPrice,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      " معلومات الزبون",
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                            color: colorWidget,
                            fontSize: MediaQuery.of(context).size.height / 40,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                TextFormField(
                  controller: nameUser,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "من فضلك ادخل اسمك الكامل";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    order.add(newValue);
                  },
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: colorWidget),
                  decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: "الاسم الكامل",
                      border: OutlineInputBorder(),
                      alignLabelWithHint: false,
                      hintTextDirection: TextDirection.ltr),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                TextFormField(
                  controller: phoneNumberUser,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "أدخل رقم الهاتف";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    order.add(newValue);
                  },
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: colorWidget),
                  decoration: const InputDecoration(
                      labelText: "رقــم الهاتف",
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                      alignLabelWithHint: false,
                      hintTextDirection: TextDirection.ltr),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                TextFormField(
                  controller: locationUser,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "ادخل موقعك";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    order.add(newValue);
                  },
                  style: TextStyle(color: colorWidget),
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      labelText: "ادخل موقعك مع ذكر اقرب نقطة دالة",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                      border: OutlineInputBorder(),
                      alignLabelWithHint: false,
                      hintTextDirection: TextDirection.ltr),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                TextFormField(
                  controller: anyNoteFromUser,
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.end,
                  onSaved: (newValue) {
                    order.add(newValue);
                  },
                  style: TextStyle(color: colorWidget),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height / 20,
                      ),
                      labelText: "اذا كانت لديك أي ملاحظة  من فضلك اكتبها هنا ",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      border: const OutlineInputBorder(),
                      alignLabelWithHint: false,
                      hintTextDirection: TextDirection.ltr),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                        "ملاحظة : سعر الشحن يضاف الى السعر الكلي , بغداد 5 دولار \nوبقية المحافظات 8 دولار ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 80,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white12,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 0.5,
                              blurStyle: BlurStyle.inner,
                              offset: Offset(1.02, 2.01)),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "\$$totalPrice",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height / 40),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "السـعر الكلي",
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                            color: colorWidget,
                            fontSize: MediaQuery.of(context).size.height / 40,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (stateForm.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: colorBackground,
                            title: Text(
                              "هل انتَ متأكد من طَلَبك ؟",
                              style: GoogleFonts.cairo(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.height / 50,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            content: Text(
                              "تأكد من معلوماتك وبعدها إضغط ( تم)",
                              style: GoogleFonts.cairo(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.height / 70,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              "تم حجز طلبك بنجاح , شكراً لشرائِك من متجرنا , نتمنى لك التوفيق "),
                                          duration: Duration(seconds: 6),
                                        ),
                                      );

                                      Future.delayed(
                                        const Duration(seconds: 4),
                                        () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePage(),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      "تم",
                                      style: GoogleFonts.cairo(
                                        textStyle: TextStyle(
                                            color: colorWidget,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                70,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        "رجوع",
                                        style: GoogleFonts.cairo(
                                          textStyle: TextStyle(
                                              color: colorWidget,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  70,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 3),
                    backgroundColor: colorWidget,
                  ),
                  child: Text(
                    "إطلب الان",
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 40,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
