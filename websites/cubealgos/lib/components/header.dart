part of 'components.dart';

const appHeader = Header(
  background: AppColors.backgroundDark,
  src: "/favicon.svg",
  destinations: [
    HeaderItem(
      href: InternalLinks.home,
      title: "Home",
      color: AppColors.text,
      highlight: AppColors.primaryLight,
    ),
  ],
);
