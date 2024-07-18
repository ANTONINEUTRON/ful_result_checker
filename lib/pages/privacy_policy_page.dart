import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Privacy Policy"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("""
      1. Introduction
      We value your privacy and are committed to protecting your personal information. This Privacy Policy outlines our practices for collecting, using, and safeguarding your data when using our Result Checker App.
      
      2. Information We Collect
      Personal Information: Name, email address, phone number, and other identifiable information provided by you.
      Usage Data: Information on how the app is accessed and used, including IP address, browser type, and device information.
      
      3. How We Use Your Information
      To provide and maintain our service.
      To notify you about changes to our service.
      To allow you to participate in interactive features.
      To provide customer support.
      To gather analysis or valuable information to improve our service.
      To monitor the usage of our service.
      To detect, prevent, and address technical issues.
      
      4. Data Sharing and Disclosure
      We do not sell, trade, or otherwise transfer your personal information to outside parties. We may share information with service providers to help us operate our business and the app, subject to confidentiality agreements.
      
      5. Data Security
      We implement appropriate security measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the internet or method of electronic storage is 100% secure.
      
      6. Your Data Rights
      You have the right to access, correct, or delete your personal information. You can update your information within the app or contact us directly for assistance.
      
      7. Changes to This Privacy Policy
      We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the effective date.
      
      8. Contact Us
      If you have any questions or concerns about this Privacy Policy, please contact us at info@ful.com.
        """),
      ),
    );
  }
}
