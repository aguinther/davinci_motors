FactoryGirl.define do
  factory :car do
    make { Car::MAKES_AND_MODELS.keys.sample }
    model { Car::MAKES_AND_MODELS[make].sample }
    year { rand(1879..2014) }
    price {  }
  end

end
