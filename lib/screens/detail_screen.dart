import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seafood/helpers/color_resources.dart';
import 'package:seafood/helpers/icon_resources.dart';
import 'package:seafood/helpers/image_resources.dart';
import 'package:seafood/helpers/string_resources.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.kAlabasterColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderDetail(),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleDetail(),
                    SizedBox(
                      height: 24,
                    ),
                    Deskripsi(),
                    SizedBox(height: 24),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardDelivery(),
                          SizedBox(width: 10),
                          CardLocation(),
                          SizedBox(width: 10),
                          CardMap(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBarDetail(),
    );
  }
}

class NavigationBarDetail extends StatelessWidget {
  const NavigationBarDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: ColorResources.kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(IconResources.minus),
              SizedBox(width: 14),
              Text(
                StringResources.x1,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: ColorResources.kDustyGrayColor,
                ),
              ),
              SizedBox(width: 14),
              SvgPicture.asset(IconResources.plus),
            ],
          ),
          Container(
            width: 140,
            height: 40,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: ColorResources.kBrightSunColor,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Text(
              StringResources.beliSekarang,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorResources.kWhiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardMap extends StatelessWidget {
  const CardMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorResources.kWhiteColor,
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 22),
          child: Column(
            children: [
              SvgPicture.asset(
                IconResources.map,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                StringResources.lihatMap,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: ColorResources.kDustyGrayColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CardLocation extends StatelessWidget {
  const CardLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorResources.kWhiteColor,
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 22),
          child: Column(
            children: [
              SvgPicture.asset(
                IconResources.location,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                StringResources.jarakPengirimanUdang,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: ColorResources.kDustyGrayColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CardDelivery extends StatelessWidget {
  const CardDelivery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorResources.kWhiteColor,
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 22),
          child: Column(
            children: [
              SvgPicture.asset(
                IconResources.motorcycle,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                StringResources.waktuPengirimanUdang,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: ColorResources.kDustyGrayColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Deskripsi extends StatelessWidget {
  const Deskripsi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringResources.deskripsi,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: ColorResources.kTunaColor,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          StringResources.deskripsiUdangCrispy,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: ColorResources.kTunaColor,
            height: 2,
            wordSpacing: 10,
          ),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}

class TitleDetail extends StatelessWidget {
  const TitleDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringResources.udangCrispy,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorResources.kTunaColor,
              ),
            ),
            SizedBox(
              height: 8,
            ),
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
                SizedBox(
                  width: 24,
                ),
                SvgPicture.asset(IconResources.clockGreen),
                SizedBox(
                  width: 10,
                ),
                Text(
                  StringResources.waktuUdangCrispy,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: ColorResources.kDustyGrayColor,
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ColorResources.kBrightSunColor,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            IconResources.loveBold,
            color: ColorResources.kWhiteColor,
          ),
        ),
      ],
    );
  }
}

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      decoration: BoxDecoration(
        color: ColorResources.kWhiteColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(80),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(0.0, 20.0),
            color: ColorResources.kGalleryColor,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorResources.kGalleryColor,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    IconResources.arrowLeft,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorResources.kGalleryColor,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  IconResources.bag,
                  color: ColorResources.kTunaColor,
                ),
              ),
            ],
          ),
          Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorResources.kGalleryColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(ImageResources.udang),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  offset: const Offset(0.0, 4.0),
                  color: ColorResources.kBlackColor.withOpacity(0.25),
                ),
                BoxShadow(
                  blurRadius: 20,
                  offset: const Offset(0.0, 20.0),
                  color: ColorResources.kBrightSunColor.withOpacity(0.2),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
