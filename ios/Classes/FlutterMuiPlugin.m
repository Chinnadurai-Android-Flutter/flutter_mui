#import "FlutterMuiPlugin.h"
#if __has_include(<flutter_mui/flutter_mui-Swift.h>)
#import <flutter_mui/flutter_mui-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_mui-Swift.h"
#endif

@implementation FlutterMuiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterMuiPlugin registerWithRegistrar:registrar];
}
@end
