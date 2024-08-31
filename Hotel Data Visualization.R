hotel_bookings <- read.csv('hotel_bookings')

head(hotel_bookings)
library(ggplot2)
colnames(hotel_bookings)
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel,fill=deposit_type))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel),fill='blue')

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel,fill=deposit_type)) + facet_wrap(~deposit_type)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel,fill=market_segment))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel,fill=market_segment)) + facet_wrap(~market_segment)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel,fill=deposit_type)) + facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel,fill=market_segment)) + facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel,fill=market_segment)) + facet_grid(deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel), fill='purple') + facet_grid(deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

ggsave('Hotel Booking Idea.png')
