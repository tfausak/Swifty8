import Cocoa

class TileCollectionView: NSCollectionView {
    // TODO: This is really dumb. There has got to be a better way.
    override func newItemForRepresentedObject(object: AnyObject!) -> NSCollectionViewItem! {
        let item = super.newItemForRepresentedObject(object)

        // TODO: This is remarkably brittle.
        let textField = item.view.subviews[0] as NSTextField

        textField.stringValue = object.description

        return item
    }
}
