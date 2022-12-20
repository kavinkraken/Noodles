//
//  ListViewController.swift
//  Noddles
//
//  Created by Kavinkumar S Thangammal on 20/12/22.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var tableViewList: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    private var listController = ListController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonNext(_ sender: UIButton) {
//        let vc = UserDetailsViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
    }

}


extension ListViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listController.numberOfRow()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return listController.cellForRowAt(tableView, indexPath: indexPath)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = DetailsViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
    }
}
extension ListViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
}
