import UIKit

class LibrosTableViewController: UITableViewController {
    
    var libros:[Libro] = [Libro]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }


    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.libros.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let libro = self.libros[indexPath.row]
        cell.textLabel!.text = "\(libro.titulo!)"

        return cell
    }
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "show") {
            let vc = segue.destinationViewController as! LibroViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            vc.libro = self.libros[indexPath!.row]
        }
    }

}
