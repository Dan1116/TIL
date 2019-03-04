import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let frame = UIScreen.main.bounds
        window = UIWindow(frame: frame)
        
        window?.backgroundColor = UIColor.yellow
        window?.rootViewController = FirstController()
                                     // FirstController.xib를 로드합니다.
        
        // window?.rootViewController = FirstController(nibName: "FirstView", bundle: nil)
        window?.makeKeyAndVisible()
        
        return true
    }
}

