import Foundation


class TicketSeller {
    private var ticketOffice : TicketOffice?
    
    var getTicketOffice : TicketOffice? {
        return ticketOffice
    }
    
    init(ticketOffice : TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
}
