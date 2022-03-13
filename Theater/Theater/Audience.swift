import Foundation


class Audience {
    private let bag : Bag?
    
    var getBag : Bag? {
        return self.bag
    }
    
    init(bag: Bag) {
        self.bag = bag
    }
}
