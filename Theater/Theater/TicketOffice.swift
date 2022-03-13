import Foundation


class TicketOffice {
    private var amount : Int = 0
    private var tickets : [Ticket] = []
    
    var getTicket : Ticket {
        return tickets.removeFirst()
    }
    
    init(amount : Int, tickets : [Ticket]) {
        self.amount = amount
        self.tickets = tickets
    }
    
    func sellTicketTo(audience: Audience) {
        guard let fee = audience.buy(ticket: getTicket) else {return}
        plusAmount(amount: fee)
    }
    
    func minusAmount(amount : Int) {
        self.amount -= amount
    }
    
    func plusAmount(amount : Int) {
        self.amount += amount
    }
}
