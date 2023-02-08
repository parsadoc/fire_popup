#include "include/fire_popup/fire_popup_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "fire_popup_plugin.h"

void FirePopupPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  fire_popup::FirePopupPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
