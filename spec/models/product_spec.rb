require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Velidation' do

    category = Category.create! name: 'cars'
    category.save
    
    context 'loading categories and product' do
      it 'should fail validation of name' do
        expect {category.products.create!({
          description: Faker::Hipster.paragraph(4),
          quantity: 10,
          price: 64.99
        })}.to raise_error(ActiveRecord::RecordInvalid)
      end

      it 'should fail quntity' do
        expect {category.products.create!({
          name:'faker',
          description: Faker::Hipster.paragraph(4),
          price: 64.99
        })}.to raise_error(ActiveRecord::RecordInvalid)
      end

      it 'shoud fail price invalid' do
        expect {category.products.create!({
          name:'faker',
          description: Faker::Hipster.paragraph(4),
          quantity: 10,
        })}.to raise_error(ActiveRecord::RecordInvalid)
      end

      it 'should fail no category present' do 
        expect {Product.create!({
          name:'faker',
          description: Faker::Hipster.paragraph(4),
          quantity: 10,
          price: 64.99
        })}.to raise_error(ActiveRecord::RecordInvalid)
      end

      it 'should pass' do
        expect {category.products.create!({
          name:'faker',
          description: Faker::Hipster.paragraph(4),
          quantity: 10,
          price: 64.99
        })}
      end
    end
  end
end
