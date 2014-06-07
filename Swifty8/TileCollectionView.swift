import Cocoa

class TileCollectionView: NSCollectionView {
    override func newItemForRepresentedObject(object: AnyObject!) -> NSCollectionViewItem! {
        let item = super.newItemForRepresentedObject(object)
        let textField = item.view.subviews[0] as NSTextField
        textField.stringValue = object.description

        return item
    }
}
