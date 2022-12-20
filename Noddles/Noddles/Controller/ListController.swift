//
//  ListController.swift
//  Noddles
//
//  Created by Kavinkumar S Thangammal on 20/12/22.
//

import UIKit

class ListController {
    var arrayOFList = [ModelNoodle]()
    private var arrayOfFilterList = [ModelNoodle]()
    init() {
        self.callListApi()
    }
    func callListApi() {
        ServerController.callForGet(urlString: "https://s3-ap-southeast-1.amazonaws.com/he-public-data/TopRamen8d30951.json") { success, response, message in
            if success , let data = response {
//                let modelNoodleList = try? JSONDecoder().decode(ModelNoodle.self, from: data)
//                arrayOFList = [modelNoodleList]
//                arrayOfFilterList =
            }
        }
    }
}
extension ListController {
    func numberOfRow() -> Int {
        return 5//arrayOFList.count
    }
    func cellForRowAt(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as! ListTableViewCell
//        cell.itemInfo = arrayOFList[indexPath.row]
        return cell
    }
    func searchText(text: String) {
        
    }
}
