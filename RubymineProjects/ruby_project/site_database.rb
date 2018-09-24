require 'active_record'
require 'ibm_db'

config = {
    adapter: 'ibm_db',
    username: 'mcyread',
    password: 'only4read',
    database: 'mlq10',
    host: '11.168.108.153',
    port: 60000,
    connection_alive_sql: true,
    uncommitted_read: true,
    schema: 'DB2MCYS'
}

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection config

class User < ActiveRecord::Base
  self.table_name = 'user'
  self.primary_key = 'user_id'

  scope :with_email_id, -> (email) {
    where(email_address: email)
  }
end

class Product < ActiveRecord::Base
  self.table_name = 'product'
  self.primary_key = 'prod_id'

  has_many :upcs,  :foreign_key => 'prod_id'

  scope :with_product_id, -> (id) {
    where(prod_id: id)
  }

  scope :with_product_name, -> (p_name) {
    where(prod_name: p_name)
  }

  scope :with_upc_id, -> (upc_id) {
    joins(:upcs).merge(Upc.with_upc_id(upc_id))
  }

end

class Upc < ActiveRecord::Base
  self.table_name = 'upc'
  self.primary_key = 'upc_id'

  belongs_to :product, foreign_key: 'prod_id'

  scope :with_product_id, -> (p_id) {
    where(prod_id: p_id)
  }

  scope :with_upc_id, -> (upc_id) {
    where(upc_id: upc_id)
  }

end

#products = Product.with_upc_id 242456
#p products.first.prod_name

upcs =  Upc.with_upc_id 242456
p upcs.first.product.prod_name

prod = Product.with_upc_id 242456
p prod
#upcs.each {|i| puts i.upc_id}
#p upcs.map(&:upc_id)

#
#user = User.with_email_id 'qaautomacys@jxeughlocommvzud.com'
#p user.first.user_id



#p p.first.prod_name
#
#products = Product.with_product_name 'Charter Club Grand Buffet Platinum Cup and Saucer'
#
#p products.first.prod_id
#