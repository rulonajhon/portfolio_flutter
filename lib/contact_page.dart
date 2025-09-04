import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get In Touch',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2C3E50),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Feel free to reach out for collaborations, opportunities, or just to connect!',
            style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
          ),
          const SizedBox(height: 30),

          _buildContactItem(
            FontAwesomeIcons.envelope,
            'Email',
            'jrulona_180000001856@uic.edu.ph',
            'mailto:jrulona_180000001856@uic.edu.ph',
            const Color(0xFFE74C3C),
          ),

          const SizedBox(height: 20),

          _buildContactItem(
            FontAwesomeIcons.mapMarkerAlt,
            'Location',
            'Purok 4-B Nuevo Iloco, Mawab, Davao de Oro',
            null,
            const Color(0xFF27AE60),
          ),

          const SizedBox(height: 20),

          _buildContactItem(
            FontAwesomeIcons.graduationCap,
            'University',
            'University of Immaculate Conception',
            null,
            const Color(0xFF3498DB),
          ),

          const SizedBox(height: 30),

          Text(
            'Connect with me on:',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2C3E50),
            ),
          ),
          const SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSocialButton(
                FontAwesomeIcons.facebook,
                const Color(0xFF3B5998),
                'Facebook',
              ),
              _buildSocialButton(
                FontAwesomeIcons.instagram,
                const Color(0xFFE1306C),
                'Instagram',
              ),
              _buildSocialButton(
                FontAwesomeIcons.linkedin,
                const Color(0xFF0077B5),
                'LinkedIn',
              ),
              _buildSocialButton(
                FontAwesomeIcons.github,
                const Color(0xFF333333),
                'GitHub',
              ),
            ],
          ),

          const SizedBox(height: 30),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF3498DB), Color(0xFF2980B9)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                const Icon(Icons.handshake, size: 40, color: Colors.white),
                const SizedBox(height: 15),
                Text(
                  'Let\'s Collaborate!',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'I\'m always open to new opportunities in technology and photography. Whether it\'s a project collaboration or just a chat about tech and photography, I\'d love to hear from you!',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(
    IconData icon,
    String title,
    String content,
    String? url,
    Color color,
  ) {
    return GestureDetector(
      onTap: url != null ? () => _launchUrl(url) : null,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: FaIcon(icon, color: color, size: 20),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2C3E50),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    content,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            if (url != null)
              Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, Color color, String platform) {
    return GestureDetector(
      onTap: () => _showSocialDialog(platform),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: FaIcon(icon, color: color, size: 24),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  void _showSocialDialog(String platform) {
    // This would typically show a dialog or navigate to the social platform
    // For now, it's just a placeholder
  }
}
