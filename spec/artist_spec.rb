require 'rails_helper'


RSpec.describe Artist, type: :model do
    it "Criação de Artista sem imagem salva" do
        rihana = Artist.new(name: "Rihana")
        expect(rihana.valid?).to be_falsey
    end
end