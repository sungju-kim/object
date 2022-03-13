import Foundation


class Bag {
    private var amount : Int = 0
    private var invitation : Invitation?
    private var ticket : Ticket?
    
    var hasInvitaion : Bool {
        return self.invitation != nil
    }
    
    var hasTicket : Bool {
        return self.ticket != nil
    }
    
    init(amount: Int) {
        self.amount = amount
    }
    
    init(invitation: Invitation, amount: Int) {
        self.invitation = invitation
        self.amount = amount
    }
    
    func hold(ticket: Ticket) -> Int {
        if hasInvitaion {
            setTicket(with: ticket)
            return 0
        }else {
            setTicket(with: ticket)
            minusAmount(amount: ticket.getFee)
            return ticket.getFee
        }
    }
    
    func setTicket(with ticket: Ticket) {
        self.ticket = ticket
    }
    
    func minusAmount(amount : Int) {
        self.amount -= amount
    }
    
    func plusAmount(amount : Int) {
        self.amount += amount
    }
}
