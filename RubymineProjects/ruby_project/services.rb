require 'httparty'

def get_promotion_name
  # MSPORDER: jcia4603
  response = HTTParty.get "http://jcia4603:8080/api/order/v1/promotions/product/productids/887547"
  p response.parsed_response
  response.parsed_response["ProductPromotions"]["productPromotionOfferList"][0]["promotions"][0]["promotionID"]
end

puts get_promotion_name
