part of 'components.dart';

const appFooter = Footer(
  background: AppColors.backgroundDark,
  reference: FooterReference(color: AppColors.textDark),
  columns: [
    FooterColumn(
      title: Paragraph("Info:", color: AppColors.textLight),
      links: [
        FooterLink(
          href: InternalLinks.imprint,
          title: "Imprint",
          color: AppColors.textDark,
        ),
      ],
    ),
    FooterColumn(
      title: Paragraph("Resources:", color: AppColors.textLight),
      links: [
        FooterLink(
          href: ExternalLinks.github,
          title: "GitHub",
          color: AppColors.textDark,
        ),
      ],
    ),
    FooterColumn(
      title: Paragraph("Socials:", color: AppColors.textLight),
      links: [
        FooterLink(
          href: ExternalLinks.x,
          title: "X",
          color: AppColors.textDark,
        ),
      ],
    )
  ],
);
