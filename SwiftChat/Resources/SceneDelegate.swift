import UIKit
import FBSDKCoreKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate
{
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
    {
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    func sceneDidDisconnect(_ scene: UIScene)
    {
        
    }
    
    func sceneDidBecomeActive(_ scene: UIScene)
    {
        
    }
    
    func sceneWillResignActive(_ scene: UIScene)
    {
        
    }
    
    func sceneWillEnterForeground(_ scene: UIScene)
    {
        
    }
    
    func sceneDidEnterBackground(_ scene: UIScene)
    {
        
    }
    
    // Facebook code from developers.facebook.com
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>)
    {
        guard let url = URLContexts.first?.url else
        {
            return
        }
        ApplicationDelegate.shared.application(UIApplication.shared, open: url, sourceApplication: nil, annotation: [UIApplication.OpenURLOptionsKey.annotation]
        )
    }
}
