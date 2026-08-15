enum IspSupportTicketStatus { open, inProgress, resolved, closed }

enum IspSupportTicketPriority { low, normal, high, urgent }

class IspSupportTicket {
  final String id;
  final String customerId;
  final String subject;
  final String description;
  final IspSupportTicketStatus status;
  final IspSupportTicketPriority priority;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const IspSupportTicket({
    required this.id,
    required this.customerId,
    required this.subject,
    required this.description,
    required this.status,
    required this.priority,
    required this.createdAt,
    this.updatedAt,
  });
}
