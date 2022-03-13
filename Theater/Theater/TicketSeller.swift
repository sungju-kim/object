import Foundation


class TicketSeller {
    private var ticketOffice : TicketOffice?
    
    var getTicketOffice : TicketOffice? {
        return ticketOffice
    }
    
    func sellTo(audience: Audience) {
        ticketOffice?.sellTicketTo(audience: audience)
    }
}
