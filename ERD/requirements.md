# ERD Overview

## Entities
- User
- Property
- Booking
- Payment
- Review

## Relationships
- User ↔ Booking (1:N)
- Property ↔ Booking (1:N)
- Booking ↔ Payment (1:1)
- Property ↔ Review (1:N)
- User ↔ Review (1:N)

Diagram created using [PlantUML](https://plantuml.com/). See diagram.png.
