import UIKit

class ProfileTableViewCell: UITableViewCell
{
    static let identifier = "ProfileTableViewCell"
    
    public func setUp(with viewModel: ProfileViewModel)
    {
        self.textLabel?.text = viewModel.title
        switch viewModel.viewModelType
        {
        case .info:
            textLabel?.textAlignment = .left
            selectionStyle = .none
        case .logout:
            textLabel?.textColor = UIColor(named: "TitleColor")
            textLabel?.textAlignment = .center
        }
    }
}
