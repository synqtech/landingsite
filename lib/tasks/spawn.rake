namespace :spawn do
  desc "TODO"
  task products: :environment do

  	Product.create(name:"360 Degree Camera",
  					description: "Acumen 360 degree endless panning camera. Advanced H.264 format, 34 noise reduction, Unwrapping decoding with minimal distortion. POE, 12V, 3 yr. warranty.",
  					price: 895.00,
  					msrp: 995.00,
  					cost: 695.00
  					)
  	Product.create(name:"2MP Static IP Camera",
  					description: "Acumen 2MP Static IP Camera (Russia) - 1920x1080 resolution, 15fps, POE, 12V DC, Internal SD Card, 3 Year warranty.",
  					price: 895.00,
  					msrp: 995.00,
  					cost: 695.00
  					)

  end

end
