part of 'constants.dart';

abstract class DefaultColors {
  static const Color slate50 = Color.value(0xf8fafc);
  static const Color slate100 = Color.value(0xf1f5f9);
  static const Color slate200 = Color.value(0xe2e8f0);
  static const Color slate300 = Color.value(0xcbd5e1);
  static const Color slate400 = Color.value(0x94a3b8);
  static const Color slate500 = Color.value(0x64748b);
  static const Color slate600 = Color.value(0x475569);
  static const Color slate700 = Color.value(0x334155);
  static const Color slate800 = Color.value(0x1e293b);
  static const Color slate900 = Color.value(0x0f172a);
  static const Color slate950 = Color.value(0x020617);

  static const Color neutral50 = Color.value(0xfafafa);
  static const Color neutral100 = Color.value(0xf5f5f5);
  static const Color neutral200 = Color.value(0xe5e5e5);
  static const Color neutral300 = Color.value(0xd4d4d4);
  static const Color neutral400 = Color.value(0xa3a3a3);
  static const Color neutral500 = Color.value(0x737373);
  static const Color neutral600 = Color.value(0x57534e);
  static const Color neutral700 = Color.value(0x404040);
  static const Color neutral800 = Color.value(0x262626);
  static const Color neutral900 = Color.value(0x171717);
  static const Color neutral950 = Color.value(0x0a0a0a);

  static const Color amber50 = Color.value(0xfffbeb);
  static const Color amber100 = Color.value(0xfef3c7);
  static const Color amber200 = Color.value(0xfde68a);
  static const Color amber300 = Color.value(0xfcd34d);
  static const Color amber400 = Color.value(0xfbbf24);
  static const Color amber500 = Color.value(0xf59e0b);
  static const Color amber600 = Color.value(0xd97706);
  static const Color amber700 = Color.value(0xb45309);
  static const Color amber800 = Color.value(0x92400e);
  static const Color amber900 = Color.value(0x78350f);
  static const Color amber950 = Color.value(0x451a03);

  static const Color emerald50 = Color.value(0xecfdf5);
  static const Color emerald100 = Color.value(0xd1fae5);
  static const Color emerald200 = Color.value(0xa7f3d0);
  static const Color emerald300 = Color.value(0x6ee7b7);
  static const Color emerald400 = Color.value(0x34d399);
  static const Color emerald500 = Color.value(0x10b981);
  static const Color emerald600 = Color.value(0x059669);
  static const Color emerald700 = Color.value(0x047857);
  static const Color emerald800 = Color.value(0x065f46);
  static const Color emerald900 = Color.value(0x064e3b);
  static const Color emerald950 = Color.value(0x022c22);

  static const Color blue50 = Color.value(0xeff6ff);
  static const Color blue100 = Color.value(0xdbeafe);
  static const Color blue200 = Color.value(0xbfdbfe);
  static const Color blue300 = Color.value(0x93c5fd);
  static const Color blue400 = Color.value(0x60a5fa);
  static const Color blue500 = Color.value(0x3b82f6);
  static const Color blue600 = Color.value(0x2563eb);
  static const Color blue700 = Color.value(0x1d4ed8);
  static const Color blue800 = Color.value(0x1e40af);
  static const Color blue900 = Color.value(0x1e3a8a);
  static const Color blue950 = Color.value(0x172554);

  static const Color indigo50 = Color.value(0xeef2ff);
  static const Color indigo100 = Color.value(0xe0e7ff);
  static const Color indigo200 = Color.value(0xc7d2fe);
  static const Color indigo300 = Color.value(0xa5b4fc);
  static const Color indigo400 = Color.value(0x818cf8);
  static const Color indigo500 = Color.value(0x6366f1);
  static const Color indigo600 = Color.value(0x4f46e5);
  static const Color indigo700 = Color.value(0x4338ca);
  static const Color indigo800 = Color.value(0x3730a3);
  static const Color indigo900 = Color.value(0x312e81);
  static const Color indigo950 = Color.value(0x1e1b4b);

  static const Color violet50 = Color.value(0xf5f3ff);
  static const Color violet100 = Color.value(0xede9fe);
  static const Color violet200 = Color.value(0xddd6fe);
  static const Color violet300 = Color.value(0xc4b5fd);
  static const Color violet400 = Color.value(0xa78bfa);
  static const Color violet500 = Color.value(0x8b5cf6);
  static const Color violet600 = Color.value(0x7c3aed);
  static const Color violet700 = Color.value(0x6d28d9);
  static const Color violet800 = Color.value(0x5b21b6);
  static const Color violet900 = Color.value(0x4c1d95);
  static const Color violet950 = Color.value(0x2e1065);
}

abstract class CubeAlgosColors {
  static const Color primary = DefaultColors.blue500;
  static const Color primaryLight = DefaultColors.blue400;
  static const Color primaryDark = DefaultColors.blue600;
  static const Color backgroundLight = DefaultColors.slate800;
  static const Color background = DefaultColors.slate900;
  static const Color backgroundDark = DefaultColors.slate950;
  static const Color textLight = DefaultColors.slate200;
  static const Color text = DefaultColors.slate400;
  static const Color textDark = DefaultColors.slate600;
}

abstract class WeAreNotABankColors {
  static const Color primary = DefaultColors.emerald600;
  static const Color primaryLight = DefaultColors.emerald400;
  static const Color primaryDark = DefaultColors.emerald800;
  static const Color backgroundLight = DefaultColors.emerald900;
  static const Color background = DefaultColors.emerald950;
  static const Color backgroundDark = DefaultColors.neutral950;
  static const Color textLight = DefaultColors.neutral200;
  static const Color text = DefaultColors.neutral400;
  static const Color textDark = DefaultColors.neutral600;
}

abstract class CubesAndBlocksColors {
  static const Color primary = DefaultColors.amber400;
  static const Color primaryLight = DefaultColors.amber300;
  static const Color primaryDark = DefaultColors.amber400;
  static const Color backgroundLight = DefaultColors.neutral200;
  static const Color background = DefaultColors.neutral300;
  static const Color backgroundDark = DefaultColors.neutral400;
  static const Color textLight = DefaultColors.neutral700;
  static const Color text = DefaultColors.neutral900;
  static const Color textDark = DefaultColors.neutral950;
}

abstract class BendingSpoonsColors {
  static const Color primary = DefaultColors.violet400;
  static const Color primaryLight = DefaultColors.violet300;
  static const Color primaryDark = DefaultColors.violet400;
  static const Color backgroundLight = DefaultColors.violet900;
  static const Color background = DefaultColors.violet950;
  static const Color backgroundDark = DefaultColors.slate950;
  static const Color textLight = DefaultColors.slate100;
  static const Color text = DefaultColors.slate200;
  static const Color textDark = DefaultColors.slate300;
}
