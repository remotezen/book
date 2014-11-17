FactoryGirl.define do
  sequence(:email){ |n| 
    "fredhudson#{n}@yahoo.com"
  }
  
  factory :user do
    name "Bob Bitchum"
    email "bob@yahoo.org"
    password "deranged"
  end
  
  
   
  factory :job do
     title "padrino engineer"
     location "Oshawa"
     description "We want you..."
     contact "remotezen@bell.net"
     time_start "01/01/2011"
     time_end   "01/01/2021"

   end
end
