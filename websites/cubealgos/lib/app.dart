import 'package:cubealgos/components/components.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'package:cubealgos_jaspr_ui/cubealgos_jaspr_ui.dart';
import 'pages/home.dart';

import 'config.dart';

// The main component of your application.
//
// By using multi-page routing, this component will only be built on the server during pre-rendering and
// **not** executed on the client. Instead only the nested [Home] and [About] components will be mounted on the client.
class App extends StatelessComponent {
  App({super.key});

  @override
  Component build(BuildContext context) {
    return BasicLayout(
      background: AppColors.backgroundLight,
      header: appHeader,
      footer: appFooter,
      child: Router(
        routes: [
          Route(
            path: '/',
            title: 'Home',
            builder: (context, state) => const HomePage(),
          ),
          Route(
            path: '/imprint',
            title: 'Imprint',
            builder: (context, state) => const Imprint(
              headingColor: AppColors.primaryDark,
              accentColor: AppColors.primaryLight,
              hightlightColor: AppColors.primary,
              textColor: AppColors.text,
              textDarkColor: AppColors.textDark,
              textLightColor: AppColors.textLight,
            ),
          ),
        ],
      ),
    );
  }

  @css
  static final styles = [
    ...CUI.styles,
  ];
}
