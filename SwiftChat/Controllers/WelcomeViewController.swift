import UIKit
import FirebaseAuth

class WelcomeViewController: UIViewController
{
    let label: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 28, weight: .bold)
        label.numberOfLines = 0
        label.textColor = UIColor(named: "TitleColor")
        label.text = "Welcome To SwiftChat"
        return label
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.addSubview(label)
        label.center = view.center
        view.backgroundColor = UIColor(named: "ScreenBackgroundColor")
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        validateAuth()
    }
    
    private func validateAuth()
    {
        if FirebaseAuth.Auth.auth().currentUser == nil
        {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        }
        else
        {
            let vc = ConversationsViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        }
    }
}
