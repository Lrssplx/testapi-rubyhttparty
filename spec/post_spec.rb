describe 'Metodo POST' do #cria um usuário e retorna o code 201 em caso de sucesso
 
    it 'Adicionando um user' do
        @new_user = {
            name: "Teste",
            job: "Analista de teste"
        }
  
        @request = User.post('/api/users', :body => @new_user)
        expect(@request.code).to eq(201)
        expect(@request["id"]).not_to be nil
        expect(@request["name"]).to eq(@new_user[:name])
        expect(@request["job"]).to eq(@new_user[:job])
        puts @new_user
  
    end
  
 end