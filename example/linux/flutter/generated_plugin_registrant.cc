//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <fire_popup/fire_popup_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) fire_popup_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FirePopupPlugin");
  fire_popup_plugin_register_with_registrar(fire_popup_registrar);
}
