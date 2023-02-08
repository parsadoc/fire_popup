#ifndef FLUTTER_PLUGIN_FIRE_POPUP_PLUGIN_H_
#define FLUTTER_PLUGIN_FIRE_POPUP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace fire_popup {

class FirePopupPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FirePopupPlugin();

  virtual ~FirePopupPlugin();

  // Disallow copy and assign.
  FirePopupPlugin(const FirePopupPlugin&) = delete;
  FirePopupPlugin& operator=(const FirePopupPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace fire_popup

#endif  // FLUTTER_PLUGIN_FIRE_POPUP_PLUGIN_H_
