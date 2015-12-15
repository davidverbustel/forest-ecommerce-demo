class StatsController < ForestLiana::ApplicationController

  # def foo
  #   render json: {
  #     "data": {
  #       "id": "7e7543cf-a637-46a8-8203-e717843c0892",
  #       "type": "stats",
  #       "attributes": {
  #           "value": [{
  #               "label": "2015-11-10T00:00:00.000Z",
  #               "values": {
  #                   "value": 3
  #               }
  #           }, {
  #               "label": "2015-11-11T00:00:00.000Z",
  #               "values": {
  #                   "value": 3
  #               }
  #           }, {
  #               "label": "2015-11-12T00:00:00.000Z",
  #               "values": {
  #                   "value": 8
  #               }
  #           }, {
  #               "label": "2015-11-13T00:00:00.000Z",
  #               "values": {
  #                   "value": 4
  #               }
  #           }, {
  #               "label": "2015-11-14T00:00:00.000Z",
  #               "values": {
  #                   "value": 6
  #               }
  #           }, {
  #               "label": "2015-11-15T00:00:00.000Z",
  #               "values": {
  #                   "value": 3
  #               }
  #           }, {
  #               "label": "2015-11-16T00:00:00.000Z",
  #               "values": {
  #                   "value": 2
  #               }
  #           }, {
  #               "label": "2015-11-17T00:00:00.000Z",
  #               "values": {
  #                   "value": 6
  #               }
  #           }, {
  #               "label": "2015-11-18T00:00:00.000Z",
  #               "values": {
  #                   "value": 2
  #               }
  #           }, {
  #               "label": "2015-11-19T00:00:00.000Z",
  #               "values": {
  #                   "value": 2
  #               }
  #           }, {
  #               "label": "2015-11-20T00:00:00.000Z",
  #               "values": {
  #                   "value": 6
  #               }
  #           }, {
  #               "label": "2015-11-21T00:00:00.000Z",
  #               "values": {
  #                   "value": 6
  #               }
  #           }, {
  #               "label": "2015-11-22T00:00:00.000Z",
  #               "values": {
  #                   "value": 7
  #               }
  #           }, {
  #               "label": "2015-11-23T00:00:00.000Z",
  #               "values": {
  #                   "value": 6
  #               }
  #           }, {
  #               "label": "2015-11-24T00:00:00.000Z",
  #               "values": {
  #                   "value": 4
  #               }
  #           }, {
  #               "label": "2015-11-25T00:00:00.000Z",
  #               "values": {
  #                   "value": 10
  #               }
  #           }, {
  #               "label": "2015-11-26T00:00:00.000Z",
  #               "values": {
  #                   "value": 5
  #               }
  #           }, {
  #               "label": "2015-11-27T00:00:00.000Z",
  #               "values": {
  #                   "value": 4
  #               }
  #           }, {
  #               "label": "2015-11-28T00:00:00.000Z",
  #               "values": {
  #                   "value": 2
  #               }
  #           }, {
  #               "label": "2015-11-29T00:00:00.000Z",
  #               "values": {
  #                   "value": 5
  #               }
  #           }, {
  #               "label": "2015-11-30T00:00:00.000Z",
  #               "values": {
  #                   "value": 2
  #               }
  #           }]
  #       }
  #     }
  #   }
  # end


  def sum_value_products
    value = Product.all.sum(:price)

    render json: serialize_model(ForestLiana::Stat.new({value: value}))
  end

  def orders_per_month
    value = CustomerOrder
      .all
      .group("DATE_TRUNC('month', order_placed_datetime)")
      .count
      .map do |date, count|
        {
          label: date,
          values: { value: count }
        }
      end
      .sort_by {|x| x[:label]}

    render json: serialize_model(ForestLiana::Stat.new({value: value}))
  end

end
