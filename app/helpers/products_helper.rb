module ProductsHelper
def format_price(product)
	if product.tbd?
	"TBD"
	else
		number_to_currency(product.price)
	end
  end

def image_for(product)
  if product.image_file_name.blank?
    image_tag('placeholder.png')
  else
    image_tag(product.image_file_name)
  end
end

end