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

ActiveRecord::Base.establish_connection db_config

class Product < ActiveRecord::Base
  self.table_name = 'product'
  self.primary_key = 'prod_id'

  scope :with_prod_id, -> (p_id){
    where(prod_id: p_id)
  }
end

#product_name = Product.with_prod_id(92913).first.prod_name
#p product_name