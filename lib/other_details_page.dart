import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtherDetailsPage extends StatelessWidget {
  const OtherDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Additional Details',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2C3E50),
            ),
          ),
          const SizedBox(height: 30),

          _buildEducationSection(),
          const SizedBox(height: 30),

          _buildRolesSection(),
          const SizedBox(height: 30),

          _buildInterestsSection(),
          const SizedBox(height: 30),

          _buildAchievementsSection(),
        ],
      ),
    );
  }

  Widget _buildEducationSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.school, color: const Color(0xFF3498DB), size: 24),
              const SizedBox(width: 10),
              Text(
                'Educational Background',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2C3E50),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          _buildEducationItem(
            'Primary Education',
            '2006 - 2012',
            'Nuevo Iloco Elementary School',
            Icons.school_outlined,
          ),

          _buildEducationItem(
            'Secondary Education',
            '2012 - 2016',
            'Assumption Academy of Mawab',
            Icons.school_outlined,
          ),

          _buildEducationItem(
            'Senior High School',
            '2016 - 2018',
            'AMA College Learning Center Tagum',
            Icons.school_outlined,
          ),

          _buildEducationItem(
            'Undergraduate Education',
            '2025 - Present',
            'University of the Immaculate Conception, Davao City\nBachelor of Science in Information Technology\nSpecialized in Healthcare Education',
            Icons.school,
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(
    String level,
    String year,
    String school,
    IconData icon,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF3498DB).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: const Color(0xFF3498DB), size: 20),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  level,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2C3E50),
                  ),
                ),
                Text(
                  year,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF3498DB),
                  ),
                ),
                Text(
                  school,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey[600],
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRolesSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2C3E50), Color(0xFF34495E)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.work, color: const Color(0xFF3498DB), size: 24),
              const SizedBox(width: 10),
              Text(
                'Roles & Responsibilities',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          _buildRoleItem(
            'Backend Developer & Analyst',
            'Developing robust backend solutions and analyzing system requirements for healthcare applications.',
          ),

          _buildRoleItem(
            'Team Coordination',
            'Coordinated weekly team meetings and ensured project milestones were met on time.',
          ),

          _buildRoleItem(
            'Communication Facilitator',
            'Facilitated communication between team members and the capstone adviser.',
          ),

          _buildRoleItem(
            'Documentation Specialist',
            'Oversaw documentation and ensured alignment with project goals and requirements.',
          ),
        ],
      ),
    );
  }

  Widget _buildRoleItem(String role, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: Color(0xFF3498DB),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  role,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF3498DB),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInterestsSection() {
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
              Icon(Icons.interests, color: const Color(0xFF27AE60), size: 24),
              const SizedBox(width: 10),
              Text(
                'Interests & Hobbies',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2C3E50),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _buildInterestChip(
                'Photography',
                Icons.camera_alt,
                const Color(0xFF9B59B6),
              ),
              _buildInterestChip(
                'Technology',
                Icons.computer,
                const Color(0xFF3498DB),
              ),
              _buildInterestChip(
                'Healthcare IT',
                Icons.medical_services,
                const Color(0xFFE74C3C),
              ),
              _buildInterestChip(
                'Photo Editing',
                Icons.edit,
                const Color(0xFFF39C12),
              ),
              _buildInterestChip(
                'Social Media',
                Icons.share,
                const Color(0xFF1ABC9C),
              ),
              _buildInterestChip(
                'Learning',
                Icons.book,
                const Color(0xFF8E44AD),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInterestChip(String interest, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 6),
          Text(
            interest,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementsSection() {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.star, color: Colors.white, size: 24),
              const SizedBox(width: 10),
              Text(
                'Goals & Aspirations',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),

          Text(
            '🎯 Current Focus',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Specializing in Healthcare IT while pursuing my Bachelor of Science in Information Technology at the University of Immaculate Conception.',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white,
              height: 1.4,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            '🚀 Future Aspirations',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'To become a leading Healthcare IT professional, bridging the gap between technology and healthcare to improve patient care and medical processes through innovative digital solutions.',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white,
              height: 1.4,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            '📸 Creative Vision',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Continue developing my photography skills and use technology to enhance creative expression while building a strong portfolio that showcases both technical and artistic capabilities.',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
