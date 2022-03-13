import Foundation


class Audience {
    private var bag : Bag?
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    func buy(ticket: Ticket) -> Int? {
        guard let bag = bag else {return nil}
        if bag.hasInvitaion {
            bag.setTicket(with: ticket)
            return 0
        } else {
            bag.setTicket(with: ticket)
            bag.minusAmount(amount: ticket.getFee)
            return ticket.getFee
        }
    }
}
