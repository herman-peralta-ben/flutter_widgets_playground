import Flutter
import UIKit
import GoogleMaps

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    // [!GoogleMapsConfig]
    if let apiKey = Bundle.main.object(forInfoDictionaryKey: "GoogleMapsApiKey") as? String {
        GMSServices.provideAPIKey(apiKey)
    } else {
        fatalError("ERROR: Couldn't load GoogleMapsApiKey from Info.plist. Check your config")
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)
  }
}
