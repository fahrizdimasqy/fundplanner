part of 'shared.dart';

Color greyColor = "8D92A3".toColor();
Color whiteColor = "FFFFFF".toColor();

Color mainColor = "207FA9".toColor();
Color sencodaryColor = "247BBD".toColor();

TextStyle whiteFontStyle = GoogleFonts.poppins().copyWith(color: whiteColor);
TextStyle blackFontStyle = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400);

const double defaultMargin = 24;

Widget loadingIndicator = SpinKitFadingCircle(size: 45, color: mainColor);
