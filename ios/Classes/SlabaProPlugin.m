#import "SlabaProPlugin.h"
#if __has_include(<slaba_pro/slaba_pro-Swift.h>)
#import <slaba_pro/slaba_pro-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "slaba_pro-Swift.h"
#endif

@implementation SlabaProPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSlabaProPlugin registerWithRegistrar:registrar];
}
@end
