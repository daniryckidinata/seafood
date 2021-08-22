import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seafood/helpers/color_resources.dart';
import 'package:seafood/helpers/icon_resources.dart';
import 'package:seafood/helpers/image_resources.dart';
import 'package:seafood/helpers/string_resources.dart';
import 'package:seafood/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorResources.kAlabasterColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 46),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderHome(),
                SizedBox(height: 30),
                Search(),
                SizedBox(height: 24),
                ListTerlaris(),
                SizedBox(height: 24),
                ListMenuTerbaru(),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ),
        floatingActionButton: NavigationBarHome(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class NavigationBarHome extends StatelessWidget {
  const NavigationBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 66,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              decoration: BoxDecoration(color: ColorResources.kWhiteColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(IconResources.home),
                  SvgPicture.asset(IconResources.love),
                  SvgPicture.asset(IconResources.bag),
                  SvgPicture.asset(IconResources.clockGrey),
                  SvgPicture.asset(IconResources.notification),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ColorResources.kAlabasterColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: ColorResources.kSilverColor.withOpacity(0.2),
                    offset: const Offset(0.0, 10.0),
                  )
                ],
              ),
              child: Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: ColorResources.kBrightSunColor,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(IconResources.bag),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListMenuTerbaru extends StatelessWidget {
  const ListMenuTerbaru({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringResources.menuTerbaru,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: ColorResources.kTunaColor,
          ),
        ),
        SizedBox(height: 18),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardKerangMercon(),
              SizedBox(width: 24),
              CardOsengCumi(),
              SizedBox(width: 24),
              CardKerangMercon(),
              SizedBox(width: 24),
              CardOsengCumi(),
              SizedBox(width: 24),
              CardKerangMercon(),
              SizedBox(width: 24),
              CardOsengCumi(),
              SizedBox(width: 24),
            ],
          ),
        )
      ],
    );
  }
}

class CardOsengCumi extends StatelessWidget {
  const CardOsengCumi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 205,
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 8,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: ColorResources.kWhiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset(
            ImageResources.cumi,
            width: 111,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringResources.osengCumi,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorResources.kTunaColor,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(IconResources.fire),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        StringResources.kkalOsengCumi,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: ColorResources.kDustyGrayColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    StringResources.hargaOsengCumi,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: ColorResources.kTunaColor,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardKerangMercon extends StatelessWidget {
  const CardKerangMercon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 205,
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 8,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: ColorResources.kWhiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset(
            ImageResources.kerang,
            width: 111,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringResources.kerangMercon,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorResources.kTunaColor,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(IconResources.fire),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        StringResources.kkalKerangMercon,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: ColorResources.kDustyGrayColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    StringResources.hargaKerangMercon,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: ColorResources.kTunaColor,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ListTerlaris extends StatelessWidget {
  const ListTerlaris({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringResources.terlaris,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: ColorResources.kTunaColor,
          ),
        ),
        SizedBox(height: 18),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              InkWell(
                child: CardUdangCrispy(),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(),
                    ),
                  );
                },
              ),
              SizedBox(width: 24),
              CardNasgorSeaFood(),
              SizedBox(width: 24),
              CardUdangCrispy(),
              SizedBox(width: 24),
              CardNasgorSeaFood(),
              SizedBox(width: 24),
              CardUdangCrispy(),
              SizedBox(width: 24),
              CardNasgorSeaFood(),
            ],
          ),
        )
      ],
    );
  }
}

class CardNasgorSeaFood extends StatelessWidget {
  const CardNasgorSeaFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 205,
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 8,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: ColorResources.kWhiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset(
            ImageResources.nasgor,
            width: 111,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringResources.nasgorSeafood,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorResources.kTunaColor,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(IconResources.fire),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        StringResources.kkalNasgorSeafood,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: ColorResources.kDustyGrayColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    StringResources.hargaNasgorSeafood,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: ColorResources.kTunaColor,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardUdangCrispy extends StatelessWidget {
  const CardUdangCrispy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 205,
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 8,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: ColorResources.kWhiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset(
            ImageResources.udang,
            width: 111,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringResources.udangCrispy,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorResources.kTunaColor,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(IconResources.fire),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        StringResources.kkalUdangCrispy,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: ColorResources.kDustyGrayColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    StringResources.hargaUdangCrispy,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: ColorResources.kTunaColor,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: ColorResources.kGalleryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringResources.temukanMakanan,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: ColorResources.kSilverChalice,
            ),
          ),
          SvgPicture.asset(
            IconResources.search,
          ),
        ],
      ),
    );
  }
}

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          StringResources.halloHazar,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: ColorResources.kTunaColor,
          ),
        ),
        Image.asset(
          ImageResources.avatar,
          width: 48,
        ),
      ],
    );
  }
}
