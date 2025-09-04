import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2C3E50),
            ),
          ),
          const SizedBox(height: 30),

          _buildProjectCard(
            'RedSync PH',
            'Healthcare IT Solution',
            'A comprehensive healthcare information system designed to streamline medical processes and improve patient care management.',
            Icons.medical_services,
            const Color(0xFFE74C3C),
            ['Flutter', 'Backend', 'Healthcare'],
          ),

          const SizedBox(height: 20),

          _buildProjectCard(
            'Jhon\'s Shot Portfolio',
            'Photography Portfolio',
            'A creative showcase of my photography work, featuring various styles and techniques in capturing beautiful moments.',
            Icons.camera_alt,
            const Color(0xFF9B59B6),
            ['Photography', 'Portfolio', 'Creative'],
          ),

          const SizedBox(height: 20),

          _buildProjectCard(
            'ITSO WEB APP',
            'Student Organization System',
            'Information Technology Services Office web application for managing IT requests and support tickets.',
            Icons.web,
            const Color(0xFF27AE60),
            ['Web Development', 'Management', 'Student Life'],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(
    String title,
    String subtitle,
    String description,
    IconData icon,
    Color color,
    List<String> tags,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: color, size: 30),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2C3E50),
                      ),
                    ),
                    Text(
                      subtitle,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 14,
              height: 1.5,
              color: const Color(0xFF34495E),
            ),
          ),
          const SizedBox(height: 15),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: tags
                .map(
                  (tag) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      tag,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: color,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
