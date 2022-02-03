describe 'Metodo DELETE' do  #remove um usuário e retorna o code 204 em caso de sucesso
 
    it 'Removendo user' do
  
        @request = User.delete('/api/users/12') #remoção do user de id 12
        expect(@request.code).to eq(204) #veriicação se o status code retornado é o correto
  
    end
  
 end