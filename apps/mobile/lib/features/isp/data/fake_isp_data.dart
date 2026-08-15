import '../domain/customer.dart';
import '../domain/internet_package.dart';
import '../domain/notification.dart';
import '../domain/payment.dart';
import '../domain/subscription.dart';
import '../domain/support_ticket.dart';

class FakeIspData {
  FakeIspData._();

  static final List<IspCustomer> customers = [
    IspCustomer(
      id: 'customer-001',
      customerCode: 'CUS-1001',
      fullName: 'Ahmad Rahimi',
      phoneNumber: '+93 700 000 001',
      username: 'ahmad.rahimi',
      address: 'Kabul',
      email: 'ahmad@example.com',
      isActive: true,
    ),
    IspCustomer(
      id: 'customer-002',
      customerCode: 'CUS-1002',
      fullName: 'Farid Ahmadi',
      phoneNumber: '+93 700 000 002',
      username: 'farid.ahmadi',
      address: 'Kabul',
      email: 'farid@example.com',
      isActive: true,
    ),
    IspCustomer(
      id: 'customer-003',
      customerCode: 'CUS-1003',
      fullName: 'Maryam Safi',
      phoneNumber: '+93 700 000 003',
      username: 'maryam.safi',
      address: 'Kabul',
      email: 'maryam@example.com',
      isActive: false,
    ),
  ];

  static final List<IspInternetPackage> packages = [
    IspInternetPackage(
      id: 'package-001',
      name: 'Home 10',
      description: 'Reliable internet package for basic home usage.',
      price: 1200,
      currency: 'AFN',
      validityDays: 30,
      downloadSpeed: '10 Mbps',
      uploadSpeed: '5 Mbps',
      dataLimit: null,
      isActive: true,
    ),
    IspInternetPackage(
      id: 'package-002',
      name: 'Home 20',
      description: 'Higher-speed package for families and streaming.',
      price: 2000,
      currency: 'AFN',
      validityDays: 30,
      downloadSpeed: '20 Mbps',
      uploadSpeed: '10 Mbps',
      dataLimit: null,
      isActive: true,
    ),
    IspInternetPackage(
      id: 'package-003',
      name: 'Business 50',
      description: 'Business package for higher bandwidth requirements.',
      price: 4500,
      currency: 'AFN',
      validityDays: 30,
      downloadSpeed: '50 Mbps',
      uploadSpeed: '20 Mbps',
      dataLimit: null,
      isActive: true,
    ),
  ];

  static final List<IspSubscription> subscriptions = [
    IspSubscription(
      id: 'subscription-001',
      customerId: 'customer-001',
      packageId: 'package-002',
      startDate: DateTime(2026, 8, 1),
      expiryDate: DateTime(2026, 8, 31),
      status: IspSubscriptionStatus.active,
      autoRenew: true,
    ),
    IspSubscription(
      id: 'subscription-002',
      customerId: 'customer-002',
      packageId: 'package-001',
      startDate: DateTime(2026, 7, 15),
      expiryDate: DateTime(2026, 8, 14),
      status: IspSubscriptionStatus.expired,
      autoRenew: false,
    ),
    IspSubscription(
      id: 'subscription-003',
      customerId: 'customer-003',
      packageId: 'package-001',
      startDate: DateTime(2026, 8, 1),
      expiryDate: DateTime(2026, 8, 31),
      status: IspSubscriptionStatus.suspended,
      autoRenew: false,
    ),
  ];

  static final List<IspPayment> payments = [
    IspPayment(
      id: 'payment-001',
      customerId: 'customer-001',
      subscriptionId: 'subscription-001',
      amount: 2000,
      currency: 'AFN',
      status: IspPaymentStatus.paid,
      method: IspPaymentMethod.mobileMoney,
      createdAt: DateTime(2026, 8, 1, 9, 30),
      referenceNumber: 'PAY-20260801-001',
    ),
    IspPayment(
      id: 'payment-002',
      customerId: 'customer-002',
      subscriptionId: 'subscription-002',
      amount: 1200,
      currency: 'AFN',
      status: IspPaymentStatus.pending,
      method: IspPaymentMethod.cash,
      createdAt: DateTime(2026, 8, 14, 14, 15),
      referenceNumber: 'PAY-20260814-002',
    ),
    IspPayment(
      id: 'payment-003',
      customerId: 'customer-003',
      subscriptionId: 'subscription-003',
      amount: 1200,
      currency: 'AFN',
      status: IspPaymentStatus.failed,
      method: IspPaymentMethod.online,
      createdAt: DateTime(2026, 8, 2, 11, 45),
      referenceNumber: 'PAY-20260802-003',
    ),
  ];

  static final List<IspNotification> notifications = [
    IspNotification(
      id: 'notification-001',
      title: 'Payment Received',
      message: 'Your payment has been received successfully.',
      type: IspNotificationType.payment,
      createdAt: DateTime(2026, 8, 1, 9, 35),
      isRead: true,
    ),
    IspNotification(
      id: 'notification-002',
      title: 'Subscription Expiring',
      message: 'Your internet subscription will expire soon.',
      type: IspNotificationType.subscription,
      createdAt: DateTime(2026, 8, 12, 10, 0),
      isRead: false,
    ),
    IspNotification(
      id: 'notification-003',
      title: 'Scheduled Maintenance',
      message: 'Network maintenance is scheduled for tonight.',
      type: IspNotificationType.maintenance,
      createdAt: DateTime(2026, 8, 14, 16, 30),
      isRead: false,
    ),
  ];

  static final List<IspSupportTicket> supportTickets = [
    IspSupportTicket(
      id: 'ticket-001',
      customerId: 'customer-001',
      subject: 'Internet speed is unstable',
      description: 'Connection speed drops during the evening.',
      status: IspSupportTicketStatus.open,
      priority: IspSupportTicketPriority.high,
      createdAt: DateTime(2026, 8, 14, 18, 20),
    ),
    IspSupportTicket(
      id: 'ticket-002',
      customerId: 'customer-002',
      subject: 'Connection unavailable',
      description: 'Internet connection is currently unavailable.',
      status: IspSupportTicketStatus.inProgress,
      priority: IspSupportTicketPriority.urgent,
      createdAt: DateTime(2026, 8, 13, 12, 10),
      updatedAt: DateTime(2026, 8, 14, 9, 15),
    ),
  ];
}
