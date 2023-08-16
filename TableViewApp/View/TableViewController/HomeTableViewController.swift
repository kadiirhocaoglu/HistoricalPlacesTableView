import UIKit

class HomeTableViewController: UITableViewController {
    
    let viewModel = PlaceFakeService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cellPlace = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath) as? HomeTableViewCell else {
            fatalError("Could not")
        }
        
        let place = viewModel.places[indexPath.row]
        cellPlace.update(with: place)
        
        return cellPlace
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected index \(indexPath.row)")
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            viewModel.places.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let placeToMove = viewModel.places.remove(at: fromIndexPath.row)
        viewModel.places.insert(placeToMove, at: to.row)
    }
    
    @IBAction func editButtonTapped(_ button: UIBarButtonItem) {
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
}
