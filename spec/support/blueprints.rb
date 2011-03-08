require 'machinist/active_record'
require 'faker'

#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Vendor.blueprint do
  name { "vendor#{sn}" }
  description{ Faker::Lorem.words(2).join(' ') } 
end
