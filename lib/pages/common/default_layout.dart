import 'package:flutter/material.dart';

/// Default Layout은 모든 Screen에 공통적으로 래핑되는 Layout입니다.
/// 만약 모든 페이지에 공통으로 적용되는 변화 사항이 있을 경우 `DefaultLayout`에서 수정하세요.
/// DefaultLayout에서 없는 기능을 추가하고자 하는 경우, nullable 옵션으로 추가하세요.
class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final String? title;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;

  /// SafeArea를 사용하지 않을 경우 true로 설정하세요. 기본은 false.
  final bool safeAreaDisabled;

  final AppBar? appBar;

  const DefaultLayout({
    super.key,
    required this.child,
    this.backgroundColor,
    this.title,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.safeAreaDisabled = false,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: appBar ?? renderDefaultAppBar(),
      body: safeAreaDisabled ? child : SafeArea(child: child),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }

  AppBar? renderDefaultAppBar() {
    return title == null
        ? null
        : AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              title!,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            foregroundColor: Colors.black,
          );
  }
}
