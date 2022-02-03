module User
    include HTTParty
    base_uri 'https://reqres.in'
    format :json
 end