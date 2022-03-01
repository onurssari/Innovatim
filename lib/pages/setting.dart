import 'package:flutter/material.dart';
import 'package:innovatim/pages/changepass.dart';
import 'package:innovatim/pages/widgets/appbar.dart';
import 'package:innovatim/pages/widgets/drawer.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppbar(
        text: 'Ayarlar',
      ),
      drawer: const MyDrawer(),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('Genel'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Dil'),
                value: const Text('Türkçe'),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.add_alert_rounded),
                title: const Text('Bildirimler ve Sesler'),
                value: const Text(' '),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: false,
                leading: const Icon(Icons.format_paint),
                title: const Text('Karanlık Mod'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text('Hesabımı Gizle'),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Hesap'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.lock_outline_rounded),
                title: const Text('Gizlilik ve Güvenlik'),
                value: const Text(' '),
                onPressed: (context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => changePassPage()),
                  );
                },
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.person),
                title: const Text('Profil'),
                value: const Text(' '),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.delete_outline_rounded),
                title: const Text('Hesabı Sil'),
                value: const Text(' '),
              ),
            ],
          ),
          SettingsSection(
            title: Text('Yardım'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (value) {},
                leading: const Icon(Icons.question_answer_outlined),
                title: const Text('Bir Soru Sor'),
              ),
              SettingsTile.navigation(
                onPressed: (value) {},
                leading: const Icon(Icons.question_answer),
                title: const Text('SSS'),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text('Gizlilik Politikası'),
                value: const Text(' '),
                onPressed: (context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => changePassPage()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
