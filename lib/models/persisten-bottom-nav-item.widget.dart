part of persistent_bottom_nav_bar;

///An item widget for the `PersistentTabView`.
class PersistentBottomNavBarItem {
  ///Icon for the bar item.
  final Widget activeIcon;

  ///Icon for the bar item.
  final Widget inActiveIcon;

  ///Icon for the bar item.
  final Widget icon;

  ///Icon for the bar item.
  // final Widget icon;

  ///Title for the bar item. Might not appear is some `styles`.
  final String title;

  ///Color for the current selected item in the navigation bar. If `activeColorAlternate` property is empty, this will act in its place (recommended). `cupertino activeBlue` by default.
  final Color activeColor;

  ///Color for the unselected item(s) in the navigation bar.
  final Color inactiveColor;

  ///Color for the item's `icon` and `title`. In most styles, declaring the the `activeColor` will be enough. But in some styles like `style7`, this might come help in differentiating the colors.
  final Color activeColorAlternate;

  ///Padding of the navigation bar item. Applies on all sides. `5.0` by default.
  ///
  ///`USE WITH CAUTION, MAY BREAK THE NAV BAR`.
  final double contentPadding;

  ///Enables and controls the transparency effect of the entire NavBar when this tab is selected.
  ///
  ///`Warning: Screen will cover the entire extent of the display`
  final double opacity;

  ///If you want custom behavior on a press of a NavBar item like display a modal screen, you can declare your logic here.
  ///
  ///NOTE: This will override the default tab switiching behavior for this particular item.
  final Function onPressed;

  ///Use it when you want to run some code when user presses the NavBar when on the initial screen of that respective tab. The inspiration was taken from the native iOS navigation bar behavior where when performing similar operation, you taken to the top of the list.
  ///
  ///NOTE: This feature is experimental at the moment and might not work as intended for some.
  final Function onSelectedTabPressWhenNoScreensPushed;

  ///Filter used when `opacity < 1.0`. Can be used to create 'frosted glass' effect.
  ///
  ///By default -> `ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0)`.
  final ImageFilter filter;

  final TextStyle textStyle;

  final double iconSize;

  /// width of bottom indicator
  final double indicatorWidth;

  ///width of bottom indicator
  final double indicatorHeight;

  ///bottom indicator radius
  final double indicatorRadius;

  ///bottom indicator radius
  final Color color;

  PersistentBottomNavBarItem(
      {@required this.activeIcon,
      @required this.inActiveIcon,
      this.icon,
      this.title,
      this.contentPadding = 5.0,
      this.activeColor = CupertinoColors.activeBlue,
      this.activeColorAlternate,
      this.opacity = 1.0,
      this.inactiveColor,
      this.filter,
      this.textStyle,
      this.iconSize = 26.0,
      this.onSelectedTabPressWhenNoScreensPushed,
      this.indicatorHeight = 2.0,
      this.indicatorWidth = 20.0,
      this.indicatorRadius = 2.0,
      this.color= const Color(0xFF12267B),
      this.onPressed}) {
    assert(activeIcon != null);
    assert(inActiveIcon != null);
    assert(opacity >= 0 && opacity <= 1.0);
  }
}
