import UIKit

class HomeTableViewController: UITableViewController {
    
    let viewModel = PlaceFakeService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toEditPlace"{
            let selectedRowIndex = tableView.indexPathForSelectedRow!
            let selectedItem = viewModel.places[selectedRowIndex.row]
            
            
            let navigationController = segue.destination as? UINavigationController
            
            let editPlaceController = navigationController?.topViewController as? HomeFormTableViewController
            
            editPlaceController?.place = selectedItem
            
        }
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
        performSegue(withIdentifier: "toEditPlace", sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            viewModel.places.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            print(viewModel.places)
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
    
    @IBAction func unWindFromNewPlace(_ segue: UIStoryboardSegue)
    {
        guard segue.identifier == "saveUnwind",
              let sourceViewController = segue.source as? HomeFormTableViewController,
              let newPlace = sourceViewController.place else {return}
        
        if let isSelectedRow = tableView.indexPathForSelectedRow{
            viewModel.places[isSelectedRow.row] = newPlace
            tableView.reloadRows(at: [isSelectedRow], with: .automatic)
        }else{
            let count = viewModel.places.count
            let newIndexPath = IndexPath(row: count, section: 0)
            viewModel.places.append(newPlace) // bu sıra önemli önce table view eklenir sonra diziye eklenir
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
        
    }
}
