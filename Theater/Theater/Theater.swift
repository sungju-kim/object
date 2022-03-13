import Foundation


class Theater {
    private var ticketSeller : TicketSeller?
    
    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }
    
    func enter(audience: Audience) {
        guard let bag = audience.getBag else {return}
        if bag.hasInvitaion {
            guard let ticket = ticketSeller?.getTicketOffice?.getTicket else {return}
            audience.getBag?.setTicket(with: ticket)
        } else {
            guard let ticket = ticketSeller?.getTicketOffice?.getTicket else {return}
            bag.minusAmount(amount: ticket.getFee)
            ticketSeller?.getTicketOffice?.plusAmount(amount: ticket.getFee)
            bag.setTicket(with: ticket)
        }
    }
}
