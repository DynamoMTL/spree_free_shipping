class Calculator::FreeShipping < Calculator
  preference :amount, :decimal, :default => 0

  def self.description
    "Free Shipping"
  end

  def self.register
    super                                
    ShippingMethod.register_calculator(self)
  end  
  
  def compute(object=nil)
    0
  end  
 
  def available?(object)
    object.eligible_for_free_shipping?
  end
end
