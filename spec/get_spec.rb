describe 'Metodo GET' do
 
    it 'List users' do  #Lista os usuários
        @users = User.get('/api/users?page=2')
        puts @users
    end

    it 'Validando usuario' do
        @user = User.get('/api/users/7')
        expect(@user.code).to eq(200) #verifica se o status retornado é o correto
        expect(@user['data']['id']).to eq(7)
        expect(@user['data']['first_name']).to eq("Michael")
    end
  
 end