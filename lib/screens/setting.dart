import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Switch states
  bool _notificationEnabled = false;
  bool _messageEnabled = false;
  bool _callEnabled = false;
  bool _videoEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSwitchTile(
              title: "Notifications",
              icon: Icons.notifications,
              value: _notificationEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationEnabled = value;
                });
              },
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1.5,
            ),
            _buildSwitchTile(
              title: "Messages",
              icon: Icons.message,
              value: _messageEnabled,
              onChanged: (value) {
                setState(() {
                  _messageEnabled = value;
                });
              },
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1.5,
            ),
            _buildSwitchTile(
              title: "video option",
              icon: Icons.play_arrow,
              value: _videoEnabled,
              onChanged: (value) {
                setState(() {
                  _videoEnabled = value;
                });
              },
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1.5,
            ),
            _buildSwitchTile(
              title: "Calls option",
              icon: Icons.phone,
              value: _callEnabled,
              onChanged: (value) {
                setState(() {
                  _callEnabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile({
    required String title,
    required IconData icon,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(title),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.purple,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 8.0),
    );
  }
}
