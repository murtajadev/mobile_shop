import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_shop/catalogePage/catalogePage.dart';
import 'package:mobile_shop/homePage/suggestItems.dart';
import 'package:mobile_shop/modul/modul.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWidget,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          margin: const EdgeInsets.only(top: 30, bottom: 30),
          child: Form(
            key: formState,
            child: Center(
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    hintText: "ابحث هنا ",
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: GoogleFonts.cairo(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 50,
                          fontWeight: FontWeight.w600),
                    ),
                    filled: true,
                    fillColor: Colors.white38,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10), gapPadding: 4),
                    enabled: true,
                    focusColor: colorWidget),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "مرحبا بك ",
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 25,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: compantName.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CatalogePage(
                              phoneShow: catalogCompanies[index],
                              nameCompany: compantName[index][0],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height / 90),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorWidget,
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.height / 100),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(compantName[index][1])),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "العناصر المقترحة لك",
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 35,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              const SuggestItems(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
