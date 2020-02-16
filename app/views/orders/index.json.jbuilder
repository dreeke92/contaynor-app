json.array!(@orders) do |order|
  json.extract! order, :id
  json.title "CONT000 #{order.id}"
  json.start order.pickup_date
  json.end order.pickup_date
  json.url order_url(order, format: :html)
end