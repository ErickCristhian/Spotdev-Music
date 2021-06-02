#require 'spec_helper'

RSpec.describe User, type: :model do    
    it "Criação de Usuário sem nome" do
        bruno_mars = User.create(email: "bruno@mars.com", password: "123456", password_confirmation: "123456")
        expect(bruno_mars.valid?).to be_falsey
    end
end