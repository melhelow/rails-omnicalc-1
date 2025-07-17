Rails.application.routes.draw do
  
  get("/", to: "application#home")
  get("/square/new", to: "application#home")
  get("/square/results", to: "application#sq_res")
  get("/square_root/new", to: "application#sq_root_form")
  get("/square_root/results", to: "application#sq_root_res")
  get("/payment/new", to: "application#payment_form")
  get("/payment/results", to: "application#payment_res")
  get("/random/new", to: "application#random_form")
  get("/random/results", to: "application#random_res")
 
end



  
  
