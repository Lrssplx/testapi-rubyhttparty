describe 'Metodo PUT' do
 
    it 'Atualizando user' do
        @updated_user = {
            name: "Teste API",
            job: "Analista de testes automatizados"
        }
  
        @request = User.put('/api/users/2', :body => @updated_user)
        expect(@request.code).to eq(200)
        expect(@request["name"]).to eq(@updated_user[:name])
        expect(@request["job"]).to eq(@updated_user[:job])
        puts @updated_user
    end
  
 end