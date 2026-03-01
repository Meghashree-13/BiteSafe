import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'insectinfo.dart';

class InsectDetailPage extends StatelessWidget {
  final InsectInfo insect;

  const InsectDetailPage({super.key, required this.insect});

  Future<void> _launchURL(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  void _showLinkErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cannot Open Link'),
        content: const Text('The link cannot be opened. Please check your internet connection or try again later.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final bool isLargeScreen = screenWidth > 800;
    final bool isVeryLargeScreen = screenWidth > 1200;
    final bool isMobile = screenWidth < 600;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with Image
          SliverAppBar(
            expandedHeight: isMobile 
              ? screenHeight * 0.35 
              : isLargeScreen ? 400.0 : 350.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: _buildImageSection(isLargeScreen, isMobile),
              title: Text(
                insect.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: isMobile ? 18.0 : isLargeScreen ? 24.0 : 20.0,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Colors.black,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
            ),
            leading: IconButton(
              icon: Container(
                padding: EdgeInsets.all(isMobile ? 6.0 : isLargeScreen ? 10.0 : 8.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: isMobile ? 20.0 : isLargeScreen ? 28.0 : 24.0,
                ),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              IconButton(
                icon: Container(
                  padding: EdgeInsets.all(isMobile ? 6.0 : isLargeScreen ? 10.0 : 8.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.image,
                    color: Colors.white,
                    size: isMobile ? 20.0 : isLargeScreen ? 28.0 : 24.0,
                  ),
                ),
                onPressed: () {
                  _shareInsect(context);
                },
              ),
            ],
          ),

          // Content Section
          SliverToBoxAdapter(
            child: Container(
              constraints: isVeryLargeScreen
                  ? BoxConstraints(maxWidth: 1200)
                  : null,
              margin: isVeryLargeScreen
                  ? EdgeInsets.symmetric(horizontal: (screenWidth - 1200) / 2)
                  : EdgeInsets.symmetric(horizontal: isMobile ? 0 : 20),
              child: Padding(
                padding: EdgeInsets.all(isMobile ? 16.0 : isLargeScreen ? 30.0 : 20.0),
                child: isLargeScreen
                    ? _buildDesktopLayout(context, isLargeScreen, isVeryLargeScreen)
                    : _buildMobileLayout(context, isLargeScreen, isMobile),
              ),
            ),
          ),
        ],
      ),

      // Floating Action Button for external link (only show if link exists)
      floatingActionButton: insect.moreInfoLink.isNotEmpty
          ? Container(
        margin: isMobile
            ? EdgeInsets.only(right: 16, bottom: 16)
            : isLargeScreen 
                ? EdgeInsets.only(right: 50, bottom: 30)
                : EdgeInsets.only(right: 20, bottom: 20),
        child: FloatingActionButton.extended(
          onPressed: () async {
            try {
              await _launchURL(insect.moreInfoLink);
            } catch (e) {
              _showLinkErrorDialog(context);
            }
          },
          backgroundColor: Colors.green[600],
          icon: Icon(
            Icons.public,
            color: Colors.white,
            size: isMobile ? 20.0 : isLargeScreen ? 28.0 : 24.0,
          ),
          label: Text(
            'Learn More',
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobile ? 14.0 : isLargeScreen ? 18.0 : 16.0,
            ),
          ),
        ),
      )
          : null,
    );
  }

  Widget _buildDesktopLayout(BuildContext context, bool isLargeScreen, bool isVeryLargeScreen) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column - Main Content
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category and Status
              _buildCategoryRow(isLargeScreen, false),
              SizedBox(height: isLargeScreen ? 25.0 : 20.0),

              // Description
              _buildSectionTitle('Description', isLargeScreen, false),
              SizedBox(height: isLargeScreen ? 12.0 : 8.0),
              _buildDescription(isLargeScreen, false),
              SizedBox(height: isLargeScreen ? 30.0 : 25.0),

              // Quick Info Grid
              _buildQuickInfoGrid(isLargeScreen, false),
              SizedBox(height: isLargeScreen ? 30.0 : 25.0),

              // Habitat
              _buildInfoSection('🏠 Habitat', insect.habitat, Icons.home, isLargeScreen, false),

              // Diet
              _buildInfoSection('🍽️ Diet', insect.diet, Icons.restaurant, isLargeScreen, false),

              // Lifespan
              _buildInfoSection('⏳ Lifespan', insect.lifespan, Icons.access_time, isLargeScreen, false),
            ],
          ),
        ),

        SizedBox(width: isLargeScreen ? 30.0 : 20.0),

        // Right Column - Facts and Additional Info
        Expanded(
          flex: 1,
          child: Column(
            children: [
              // Interesting Facts
              _buildFactsSection(isLargeScreen, false),

              SizedBox(height: isLargeScreen ? 25.0 : 20.0),

              // Learn More Section (only show if link exists)
              if (insect.moreInfoLink.isNotEmpty)
                _buildLearnMoreSection(context, isLargeScreen, false),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context, bool isLargeScreen, bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category and Status
        _buildCategoryRow(isLargeScreen, isMobile),
        SizedBox(height: isMobile ? 16.0 : 20.0),

        // Description
        _buildSectionTitle('Description', isLargeScreen, isMobile),
        SizedBox(height: isMobile ? 8.0 : 12.0),
        _buildDescription(isLargeScreen, isMobile),
        SizedBox(height: isMobile ? 20.0 : 25.0),

        // Quick Info Grid
        _buildQuickInfoGrid(isLargeScreen, isMobile),
        SizedBox(height: isMobile ? 20.0 : 25.0),

        // Habitat
        _buildInfoSection('🏠 Habitat', insect.habitat, Icons.home, isLargeScreen, isMobile),

        // Diet
        _buildInfoSection('🍽️ Diet', insect.diet, Icons.restaurant, isLargeScreen, isMobile),

        // Lifespan
        _buildInfoSection('⏳ Lifespan', insect.lifespan, Icons.access_time, isLargeScreen, isMobile),

        // Interesting Facts
        _buildFactsSection(isLargeScreen, isMobile),

        // Learn More Section (only show if link exists)
        if (insect.moreInfoLink.isNotEmpty) ...[
          SizedBox(height: isMobile ? 20.0 : 25.0),
          _buildLearnMoreSection(context, isLargeScreen, isMobile),
        ],

        SizedBox(height: isMobile ? 20.0 : 30.0),
      ],
    );
  }

  void _shareInsect(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Sharing ${insect.name}'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  Widget _buildImageSection(bool isLargeScreen, bool isMobile) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            insect.image,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return _buildPlaceholderImage(isLargeScreen, isMobile);
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              );
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.7),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPlaceholderImage(bool isLargeScreen, bool isMobile) {
    return Container(
      color: Colors.green[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.bug_report,
              size: isMobile ? 60.0 : isLargeScreen ? 120.0 : 80.0,
              color: Colors.green[300]
            ),
            SizedBox(height: isMobile ? 8.0 : isLargeScreen ? 15.0 : 10.0),
            Text(
              insect.emoji,
              style: TextStyle(fontSize: isMobile ? 30.0 : isLargeScreen ? 60.0 : 40.0)
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryRow(bool isLargeScreen, bool isMobile) {
    return Row(
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 12.0 : isLargeScreen ? 16.0 : 12.0,
              vertical: isMobile ? 6.0 : isLargeScreen ? 10.0 : 6.0
            ),
            decoration: BoxDecoration(
              color: _getCategoryColor(),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              insect.category,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: isMobile ? 12.0 : isLargeScreen ? 16.0 : 14.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(width: isMobile ? 8.0 : isLargeScreen ? 15.0 : 10.0),
        Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 12.0 : isLargeScreen ? 16.0 : 12.0,
              vertical: isMobile ? 6.0 : isLargeScreen ? 10.0 : 6.0
            ),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              insect.sizeCategory,
              style: TextStyle(
                color: Colors.blue[800],
                fontWeight: FontWeight.w600,
                fontSize: isMobile ? 12.0 : isLargeScreen ? 16.0 : 14.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const Spacer(),
        Text(
          insect.emoji,
          style: TextStyle(fontSize: isMobile ? 20.0 : isLargeScreen ? 32.0 : 24.0),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title, bool isLargeScreen, bool isMobile) {
    return Text(
      title,
      style: TextStyle(
        fontSize: isMobile ? 18.0 : isLargeScreen ? 26.0 : 22.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildDescription(bool isLargeScreen, bool isMobile) {
    return Text(
      insect.description,
      style: TextStyle(
        fontSize: isMobile ? 14.0 : isLargeScreen ? 18.0 : 16.0,
        color: Colors.black54,
        height: 1.6,
      ),
    );
  }

  Widget _buildQuickInfoGrid(bool isLargeScreen, bool isMobile) {
    final crossAxisCount = isMobile ? 2 : isLargeScreen ? 4 : 2;
    
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: isMobile ? 8.0 : isLargeScreen ? 10.0 : 15.0,
      mainAxisSpacing: isMobile ? 8.0 : isLargeScreen ? 15.0 : 15.0,
      children: [
        _buildQuickInfoItem('Conservation', insect.conservationStatus, Icons.health_and_safety, isLargeScreen, isMobile),
        _buildQuickInfoItem('Size', insect.sizeCategory, Icons.straighten, isLargeScreen, isMobile),
        _buildQuickInfoItem('Facts', '${insect.facts.length}', Icons.lightbulb, isLargeScreen, isMobile),
        _buildQuickInfoItem('Beneficial', insect.isBeneficial ? 'Yes' : 'No', Icons.thumb_up, isLargeScreen, isMobile),
      ],
    );
  }

  Widget _buildQuickInfoItem(String title, String value, IconData icon, bool isLargeScreen, bool isMobile) {
    return Container(
      padding: EdgeInsets.all(isMobile ? 12.0 : 16.0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.green[100]!),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: isMobile ? 24.0 : isLargeScreen ? 32.0 : 28.0,
            color: Colors.green[600]
          ),
          SizedBox(height: isMobile ? 8.0 : 12.0),
          Text(
            title,
            style: TextStyle(
              fontSize: isMobile ? 12.0 : isLargeScreen ? 15.0 : 14.0,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: isMobile ? 4.0 : 6.0),
          Text(
            value,
            style: TextStyle(
              fontSize: isMobile ? 14.0 : isLargeScreen ? 18.0 : 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection(String title, String content, IconData icon, bool isLargeScreen, bool isMobile) {
    return Container(
      margin: EdgeInsets.only(bottom: isMobile ? 16.0 : isLargeScreen ? 25.0 : 20.0),
      padding: EdgeInsets.all(isMobile ? 12.0 : isLargeScreen ? 20.0 : 16.0),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: isMobile ? 20.0 : isLargeScreen ? 30.0 : 24.0,
            color: Colors.green[600]
          ),
          SizedBox(width: isMobile ? 10.0 : isLargeScreen ? 16.0 : 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: isMobile ? 16.0 : isLargeScreen ? 20.0 : 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: isMobile ? 6.0 : isLargeScreen ? 10.0 : 8.0),
                Text(
                  content,
                  style: TextStyle(
                    fontSize: isMobile ? 13.0 : isLargeScreen ? 16.0 : 15.0,
                    color: Colors.black54,
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

  Widget _buildFactsSection(bool isLargeScreen, bool isMobile) {
    return Container(
      padding: EdgeInsets.all(isMobile ? 16.0 : isLargeScreen ? 25.0 : 20.0),
      decoration: BoxDecoration(
        color: Colors.orange[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.lightbulb_outline,
                color: Colors.orange[700],
                size: isMobile ? 20.0 : isLargeScreen ? 28.0 : 24.0,
              ),
              SizedBox(width: isMobile ? 8.0 : isLargeScreen ? 12.0 : 8.0),
              Text(
                'Interesting Facts',
                style: TextStyle(
                  fontSize: isMobile ? 18.0 : isLargeScreen ? 22.0 : 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: isMobile ? 12.0 : isLargeScreen ? 18.0 : 15.0),
          ...insect.facts.asMap().entries.map((entry) {
            int index = entry.key;
            String fact = entry.value;
            return Padding(
              padding: EdgeInsets.only(bottom: isMobile ? 10.0 : isLargeScreen ? 15.0 : 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: isMobile ? 24.0 : isLargeScreen ? 32.0 : 28.0,
                    height: isMobile ? 24.0 : isLargeScreen ? 32.0 : 28.0,
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[700],
                          fontSize: isMobile ? 10.0 : isLargeScreen ? 14.0 : 12.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: isMobile ? 10.0 : isLargeScreen ? 15.0 : 12.0),
                  Expanded(
                    child: Text(
                      fact,
                      style: TextStyle(
                        fontSize: isMobile ? 13.0 : isLargeScreen ? 16.0 : 15.0,
                        color: Colors.black54,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildLearnMoreSection(BuildContext context, bool isLargeScreen, bool isMobile) {
    return Container(
      padding: EdgeInsets.all(isMobile ? 16.0 : isLargeScreen ? 25.0 : 20.0),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue[100]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Want to Learn More?',
            style: TextStyle(
              fontSize: isMobile ? 16.0 : isLargeScreen ? 20.0 : 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: isMobile ? 6.0 : isLargeScreen ? 10.0 : 8.0),
          Text(
            'Explore additional resources and detailed information about this insect:',
            style: TextStyle(
              fontSize: isMobile ? 12.0 : isLargeScreen ? 16.0 : 14.0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: isMobile ? 10.0 : isLargeScreen ? 15.0 : 12.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () async {
                try {
                  await _launchURL(insect.moreInfoLink);
                } catch (e) {
                  _showLinkErrorDialog(context);
                }
              },
              icon: Icon(
                Icons.public,
                size: isMobile ? 18.0 : isLargeScreen ? 24.0 : 20.0,
              ),
              label: Text(
                'Visit Resource Page',
                style: TextStyle(
                  fontSize: isMobile ? 13.0 : isLargeScreen ? 16.0 : 14.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[600],
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 16.0 : isLargeScreen ? 25.0 : 20.0,
                  vertical: isMobile ? 12.0 : isLargeScreen ? 15.0 : 12.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor() {
    switch (insect.category.toLowerCase()) {
      case 'pollinator':
        return Colors.orange[600]!;
      case 'predator':
        return Colors.red[600]!;
      case 'herbivore':
        return Colors.green[600]!;
      case 'omnivore':
        return Colors.blue[600]!;
      default:
        return Colors.purple[600]!;
    }
  }
}