#product id = 1234, prod_name

require 'active_record'
require 'ibm_db'

db_config = {
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
ActiveRecord::Base.establish_connection db_config

class Product < ActiveRecord::Base
  self.table_name = 'product'
  self.primary_key = 'prod_id'

  has_many :upcs,             :foreign_key => 'prod_id'

  scope :with_product_id, -> (id){
    where(prod_id: id)
  }

  scope :with_upc_name, -> (id){
    joins(:upcs).merge(Upc.with_upc_id(id))
  }

end

products = Product.with_product_id 658418
p products.first.prod_name #return array of active record objects


class Upc < ActiveRecord::Base
  self.table_name = 'upc'
  self.primary_key = 'upc_id'

  belongs_to :product,            :foreign_key => 'prod_id'

  scope :with_upc_id, -> (id){
    where(upc_id: id)
  }
end

upcs =  Upc.with_upc_id 242456
p upcs.first.product.prod_name

prod = Product.with_upc_name 242456
p prod