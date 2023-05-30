enum ScreenSize { asmallmobile, blargemobile, }

const _breakPoint1 = 500;
// const _breakPoint2 = 840.0;
// Google Pixel 3	412 x 824
// iPhone 14 Pro	393	852

ScreenSize getScreenSize(double width) {
  print('size.width = $width');
  // 2 screen sizes
  if (width < _breakPoint1) {
    return ScreenSize.asmallmobile;
  } else {
    return ScreenSize.blargemobile;
  }

}