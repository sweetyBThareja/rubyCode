require 'httparty'

def get_promotion_name
  response = HTTParty.get "http://jcia8778:8080/api/order/v1/promotions/product/productids/887547"
  p response.parsed_response
  response.parsed_response["ProductPromotions"]["productPromotionOfferList"][0]["promotions"][0]["promotionID"]
end

puts get_promotion_name