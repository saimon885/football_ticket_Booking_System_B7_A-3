-- Users table
create table users(
  user_id serial primary key,
  full_name varchar(150) not null,
  role varchar(50) not null
      check (role IN ('Ticket Manager', 'Football Fan')),
  email varchar(100) unique not null,
  phone_number varchar(15)
)


-- matches Table
create table matches (
    match_id int primary key,
    fixture text not null,
    tournament_category varchar(50) not null
        check (
            tournament_category IN (
                'Champions League',
                'Premier League',
                'Serie A'
            )
        ),
    base_ticket_price int not null
        check (base_ticket_price > 0),
    match_status varchar(30) not null
        check (
            match_status IN (
                'Available',
                'Selling Fast',
                'Sold Out',
                'Postponed'
            )
        )
);


-- Bookings table
create table bookings(
  booking_id int primary key,
  user_id int not null references users(user_id),
  match_id int not null references matches(match_id),
  seat_number varchar(20),
  payment_status varchar(40)
    check(payment_status in('Pending', 'Confirmed', 'Cancelled', 'Refunded')),
  total_cost int(10)
);





