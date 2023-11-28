import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:stock_game/Utils/Constants/string_constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: SettingsList(
          platform: DevicePlatform.iOS,
          sections: [
            SettingsSection(
              title: const Text('Statics'),
              tiles: <SettingsTile>[
                SettingsTile(
                  leading: const Icon(
                    Icons.currency_exchange,
                    color: Colors.green,
                  ),
                  title: const Text('Total Turn over'),
                  trailing: const Text("111\$"),
                ),
                SettingsTile(
                  leading: const Icon(
                    Icons.currency_exchange_outlined,
                    color: Colors.red,
                  ),
                  title: const Text('Over all loss'),
                  trailing: const Text("11\$"),
                ),
                SettingsTile(
                  leading: const Icon(
                    Icons.account_balance_outlined,
                  ),
                  title: const Text('Gain from Hard work'),
                  trailing: const Text("10\$"),
                ),
                SettingsTile(
                  leading: const Icon(
                    Icons.account_balance_wallet,
                  ),
                  title: const Text('Net Account balance'),
                  trailing: const Text("110\$"),
                ),
              ],
            ),
            SettingsSection(
                title: const Text('Personalize'),
                tiles: <SettingsTile>[
                  SettingsTile(
                    leading: const Icon(Icons.language),
                    title: const Text('Language'),
                    value: const Text('English'),
                  ),
                  SettingsTile(
                    leading: const Icon(Icons.account_box),
                    title: const Text('Name'),
                    value: const Text(CARD_NAME),
                  ),
                  SettingsTile(
                    leading: const Icon(Icons.mail),
                    title: const Text('Mail'),
                    value: const Icon(
                      Icons.verified_user,
                      size: 20,
                      color: Colors.green,
                    ),
                  ),
                  SettingsTile(
                    leading: const Icon(Icons.phone),
                    title: const Text('PhoneNumber'),
                    value: const Icon(
                      Icons.not_interested,
                      size: 20,
                      color: Colors.redAccent,
                    ),
                  ),
                ]),
            SettingsSection(
              title: const Text('Security'),
              tiles: <SettingsTile>[
                SettingsTile.switchTile(
                  onToggle: (bool value) {},
                  initialValue: true,
                  leading: const Icon(Icons.security),
                  title: const Text('Enable Finger print'),
                ),
                SettingsTile.navigation(
                  leading: const Icon(
                    Icons.login,
                    color: Colors.red,
                  ),
                  title: const Text('Log out'),
                ),
              ],
            ),
            SettingsSection(
                title: const Text('Reach Us'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: const Icon(Icons.mail),
                    title: const Text('Mail Us'),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
