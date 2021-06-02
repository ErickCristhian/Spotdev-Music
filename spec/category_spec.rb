#require 'rails_helper'

RSpec.describe Category, type: :model do
    it "Criação de Categoria sem nome" do
        mpb = Category.new()
        expect(mpb.valid?).to be_falsey
    end
end