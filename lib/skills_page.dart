import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills & Expertise',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2C3E50),
            ),
          ),
          const SizedBox(height: 30),

          _buildSkillCategory('Technical Skills', [
            {'name': 'Backend Development', 'level': 0.8, 'icon': Icons.code},
            {'name': 'System Analysis', 'level': 0.7, 'icon': Icons.analytics},
            {
              'name': 'Database Management',
              'level': 0.6,
              'icon': Icons.storage,
            },
            {
              'name': 'Healthcare IT',
              'level': 0.7,
              'icon': Icons.medical_services,
            },
          ]),

          const SizedBox(height: 30),

          _buildSkillCategory('Creative Skills', [
            {'name': 'Photography', 'level': 0.9, 'icon': Icons.camera_alt},
            {'name': 'Photo Editing', 'level': 0.8, 'icon': Icons.edit},
            {'name': 'Social Media', 'level': 0.7, 'icon': Icons.share},
            {'name': 'Visual Design', 'level': 0.6, 'icon': Icons.brush},
          ]),

          const SizedBox(height: 30),

          _buildSkillCategory('Leadership & Communication', [
            {'name': 'Team Coordination', 'level': 0.8, 'icon': Icons.group},
            {
              'name': 'Project Management',
              'level': 0.7,
              'icon': Icons.assignment,
            },
            {'name': 'Documentation', 'level': 0.8, 'icon': Icons.description},
            {'name': 'Client Communication', 'level': 0.7, 'icon': Icons.chat},
          ]),
        ],
      ),
    );
  }

  Widget _buildSkillCategory(String title, List<Map<String, dynamic>> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3498DB),
          ),
        ),
        const SizedBox(height: 15),
        ...skills.map(
          (skill) => _buildSkillItem(
            skill['name'] as String,
            skill['level'] as double,
            skill['icon'] as IconData,
          ),
        ),
      ],
    );
  }

  Widget _buildSkillItem(String skillName, double level, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: const Color(0xFF3498DB), size: 20),
              const SizedBox(width: 10),
              Text(
                skillName,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2C3E50),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: level,
            backgroundColor: Colors.grey[300],
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF3498DB)),
            minHeight: 6,
          ),
          const SizedBox(height: 5),
          Text(
            '${(level * 100).toInt()}%',
            style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
