

import 'package:uptrain/models/routes.dart';
import 'package:uptrain/models/ticket_class.dart';
import 'package:uptrain/models/train_model.dart';

List<Routes> routes = [
  Routes(from: "London to Paris", text: "from", amount: "\$39.74", rating: "4.5", image: "images/paris.png"),
  Routes(from: "London to Tokyo", text: "from", amount: "\$40.00", rating: "4.5", image: "images/paris.png"),
  Routes(from: "Nepal to India", text: "from", amount: "\$35.74", rating: "4.5", image: "images/paris.png"),
];

List<Train> train = <Train>[
  Train(name: "Acela", cheapest: "cheapest", fromTime: "06:50 AM", toTime: "11:05 AM", fromStation: "Penn Station", toStation: "South Station", timeInterval: "4h 15m", transfer: "1 transfers", rate: "\$115"),
  Train(name: "Amtrak", cheapest: "2nd cheapest", fromTime: "06:50 AM", toTime: "11:05 AM", fromStation: "Penn Station", toStation: "South Station", timeInterval: "4h 15m", transfer: "1 transfers", rate: "\$125"),
  Train(name: "Acela", cheapest: "3rd cheapest", fromTime: "06:50 AM", toTime: "11:05 AM", fromStation: "Penn Station", toStation: "South Station", timeInterval: "4h 15m", transfer: "1 transfers", rate: "\$50"),
];

List<TicketClass> ticketClass = [
  TicketClass(name: "Power Plugs"),
  TicketClass(name: "Extra legroom"),
  TicketClass(name: "Extra legroom"),
  TicketClass(name: "Semi refundable"),
  TicketClass(name: "Non refundable"),
];