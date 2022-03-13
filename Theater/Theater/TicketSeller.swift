import Foundation


class TicketSeller {
    private var ticketOffice : TicketOffice?
    
    var getTicketOffice : TicketOffice? {
        return ticketOffice
    }
    
    func sellTo(audience: Audience) {
        guard let bag = audience.getBag else {return}
        if bag.hasInvitaion {
            guard let ticket = ticketOffice?.getTicket else {return}
            audience.getBag?.setTicket(with: ticket)
        } else {
            guard let ticket = ticketOffice?.getTicket else {return}
            bag.minusAmount(amount: ticket.getFee)
            ticketOffice?.plusAmount(amount: ticket.getFee)
            bag.setTicket(with: ticket)
        }
    }
}
