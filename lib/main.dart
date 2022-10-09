import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:finandina/app/app_colors.dart';
import 'package:finandina/app/app_settings.dart';
import 'package:finandina/assets/assets.dart';
import 'package:finandina/generated/l10n.dart';
import 'package:finandina/slider_components/introduction_screen.dart';
import 'package:finandina/slider_components/model/page_decoration.dart';
import 'package:finandina/slider_components/model/page_view_model.dart';
import 'package:finandina/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.delegate.supportedLocales,
        // locale: Locale("es", ""),
        debugShowCheckedModeBanner: false,
        title: AppSettings().appDisplayName,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.robotoTextTheme(
              Theme.of(context).textTheme,
            )),
        builder: (context, widget) => ResponsiveWrapper.builder(BouncingScrollWrapper.builder(context, widget!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: Colors.white)),
        home: const MyHomePage(),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String assetName, {String? title, String? subtitle}) {
    return Column(
      children: [
        SizedBox(
          height: 70,
        ),
        SvgPicture.asset(AppAssets.iconFinandina, width: assetName == "" ? 100 : 60),
        SizedBox(
          height: 50,
        ),
        assetName == ""
            ? Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: AppLocalizations.of(context).title1 + " ",
                      style: AppStyle().styleText(20.sp, Colors.white, false),
                      children: <TextSpan>[
                        TextSpan(text: AppLocalizations.of(context).title1v2, style: AppStyle().styleText(20.sp, Colors.white, true)),
                      ],
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).title2,
                    style: AppStyle().styleText(20.sp, Colors.white, false),
                  ),
                  SizedBox(
                    height: 450,
                  ),
                  Text(
                    AppLocalizations.of(context).title2v2,
                    style: AppStyle().styleText(14.sp, Colors.white, false),
                  ),
                  Text(
                    AppLocalizations.of(context).title2v3,
                    style: AppStyle().styleText(25.sp, Colors.white, true),
                  ),
                ],
              )
            : Image.asset(
                assetName,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        assetName == ""
            ? SizedBox()
            : Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      title.toString(),
                      style: AppStyle().styleText(23.sp, Colors.white, true),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      subtitle.toString(),
                      style: AppStyle().styleText(14.sp, Colors.white, false),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var gradient1 = [
      const Color(0xFF9C2C9F),
      const Color(0xFFE6193A),
      const Color(0xFFE6193A),
    ];
    var gradient2 = [
      const Color(0xFFE41D57),
      const Color(0xFFF66099),
      const Color(0xFFF66099),
    ];
    var gradient3 = [
      const Color(0xFFFA2836),
      const Color(0xFFFE6A40),
      const Color(0xFFF91B34),
    ];
    var gradient4 = [
      const Color(0xFF8325DD),
      const Color(0xFF9328E0),
      const Color(0xFF7021D9),
    ];
    var gradient5 = [
      const Color(0xFFE51F5A),
      const Color(0xFFF3578F),
      const Color(0xFFE51F5A),
    ];
    var gradient6 = [
      const Color(0xFF8627DE),
      const Color(0xFF9D2BE3),
      const Color(0xFF6F21D9),
    ];
    var gradient7 = [
      const Color(0xFF8627DE),
      const Color(0xFF9D2BE3),
      const Color(0xFF6F21D9),
    ];
    List colorList = [gradient1, gradient2, gradient3, gradient4, gradient5, gradient6, gradient7];
    const bodyStyle = TextStyle(fontSize: 19.0);

    getDecoration(int number) {
      PageDecoration pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
        bodyTextStyle: bodyStyle,
        descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        imagePadding: EdgeInsets.zero,
        boxDecoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colorList[(number - 1)],
              begin: const FractionalOffset(0.0, 0.1),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 0.6, 1.0],
              tileMode: TileMode.clamp),
        ),
      );
      return pageDecoration;
    }

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          image: _buildImage(""),
          decoration: getDecoration(1),
        ),
        PageViewModel(
          image: _buildImage(AppAssets.wallpaper1,
              title: AppLocalizations.of(context).page2title, subtitle: AppLocalizations.of(context).page2subtitle),
          decoration: getDecoration(2),
        ),
        PageViewModel(
          image: _buildImage(AppAssets.wallpaper2,
              title: AppLocalizations.of(context).page3title, subtitle: AppLocalizations.of(context).page3subtitle),
          decoration: getDecoration(3),
        ),
        PageViewModel(
          image: _buildImage(AppAssets.wallpaper3,
              title: AppLocalizations.of(context).page4title, subtitle: AppLocalizations.of(context).page4subtitle),
          decoration: getDecoration(4),
        ),
        PageViewModel(
          image: _buildImage(AppAssets.wallpaper4,
              title: AppLocalizations.of(context).page5title, subtitle: AppLocalizations.of(context).page5subtitle),
          decoration: getDecoration(5),
        ),
        PageViewModel(
          image: _buildImage(AppAssets.wallpaper5,
              title: AppLocalizations.of(context).page6title, subtitle: AppLocalizations.of(context).page6subtitle),
          decoration: getDecoration(6),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text(
        'Saltar',
        style: AppStyle().styleText(18, Colors.white, false, bold2: true),
      ),
      next: Container(
        width: 60,
        height: 60,
        child: Icon(
          Icons.arrow_forward,
          color: AppColors.gradient2,
        ),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      ),
      done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      /* dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),*/
      globalBackgroundColor: Colors.black,
      onChange: (int value) {},
      onSkip: () {},
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
