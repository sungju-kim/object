import Foundation


class TicketSeller {
    private var ticketOffice : TicketOffice?
    
    var getTicketOffice : TicketOffice? {
        return ticketOffice
    }
    
    func sellTo(audience: Audience) {
        guard let ticket = ticketOffice?.getTicket else {return}
        guard let fee = audience.buy(ticket: ticket) else {return}
        ticketOffice?.plusAmount(amount: fee)
    }
}
