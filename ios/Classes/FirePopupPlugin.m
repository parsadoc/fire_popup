#import "FirePopupPlugin.h"
#if __has_include(<fire_popup/fire_popup-Swift.h>)
#import <fire_popup/fire_popup-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fire_popup-Swift.h"
#endif

@implementation FirePopupPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFirePopupPlugin registerWithRegistrar:registrar];
}
@end
