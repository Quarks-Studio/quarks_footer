import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuarksFooter extends StatelessWidget {
  const QuarksFooter({super.key});

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade800)),
        color: const Color(0xFF121212),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 32,
        runSpacing: 16,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/isotipo.png',
                package: 'quarks_footer',
                height: 26,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.science, size: 26, color: Colors.white),
              ),
              const SizedBox(width: 10),
              Text(
                'Desarrollado por ',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => _launchURL('https://quarks-studio.com'),
                  child: const Text(
                    'Quarks Studio',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _SocialIcon(
                icon: FontAwesomeIcons.envelope,
                onTap: () => _launchURL('mailto:consultas@quarks-studio.com'),
              ),
              const SizedBox(width: 16),
              _SocialIcon(
                icon: FontAwesomeIcons.whatsapp,
                onTap: () => _launchURL('https://wa.me/5491158557593'),
              ),
              const SizedBox(width: 16),
              _SocialIcon(
                icon: FontAwesomeIcons.instagram,
                onTap: () =>
                    _launchURL('https://www.instagram.com/quarksstudioapps/'),
              ),
              const SizedBox(width: 16),
              _SocialIcon(
                icon: FontAwesomeIcons.linkedinIn,
                onTap: () => _launchURL(
                  'https://www.linkedin.com/company/quarksstudio/?viewAsMember=true',
                ),
              ),
              const SizedBox(width: 16),
              _SocialIcon(
                icon: FontAwesomeIcons.globe,
                onTap: () => _launchURL('https://quarks-studio.com'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final dynamic icon;
  final VoidCallback onTap;

  const _SocialIcon({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: FaIcon(icon, size: 16, color: Colors.grey.shade300),
      ),
    );
  }
}
