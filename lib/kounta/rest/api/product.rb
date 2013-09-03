require_relative "utils"
require_relative "../../category"
require_relative "../../product"

module Kounta
	module REST
		module API
			module Product
				include Kounta::REST::API::Utils

				def company_site_products(company_id, site_id)
					objects_from_response(Kounta::Product, [company_id, site_id], load_hash_from_file('products.json'))
				end

				def company_site_product(company_id, site_id, id)
					Kounta::Product.new(company_id, site_id, load_hash_from_file('product.json'))
				end

			end
		end
	end
end