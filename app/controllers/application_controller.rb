class ApplicationController < ActionController::Base
    def home
        render({ template: "application_templates/home" }) 
  end
  def sq_res
    @the_num = params.fetch("users_number").to_f

    @the_results = @the_num **2
             
   
   render({ template: "application_templates/sq_res" })
  end
  def sq_root 

  render({ template: "application_templates/sq_root" }) 

end 

 

def sq_root_form
    render template: "application_templates/sq_root"
  end

  def sq_root_res
    @the_num = params.fetch("users_number").to_f
    @the_results = Math.sqrt(@the_num)
    render template: "application_templates/sq_root_res"
  end

  def payment_form
    render template: "application_templates/payment"
  end

  def payment_res
  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i
  @principal = params.fetch("user_pay").to_f

  rate = @apr
  bal = @principal
  term = @years * 12

  r = rate / 1200
  n = r * bal
  d = 1 - (1 + r)**-term
  pmt = n / d


  @pmayt = pmt.to_fs(:currency)
  @apr = rate.to_fs(:percentage, { :precision => 4 } )
  @principal = bal.to_fs(:currency)

  render template: "application_templates/payment_res"
  end

  def random_form
    render template: "application_templates/random"
  end

  def random_res
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  
  @results = rand(@min..@max).to_f
  render template: "application_templates/random_res"
  end
end
