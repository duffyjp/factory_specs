# FactoryGirl factory verifier
# Jacob Duffy
# https://github.com/duffyjp
#
# Starts with all table names, then finds all models using each table. 
# Verifies each model has a factory and that it is able to save!

require 'rails_helper'

describe "Factory" do
  # Make sure Rails knows about all of its models
  Rails.application.eager_load!

  (ActiveRecord::Base.connection.tables - ["schema_migrations", "versions"]).each do |table|
    ActiveRecord::Base.descendants.select{|d| d.table_name == table && !(d.to_s =~ /HABTM/)}.each do |model|

      factory = model.name.tableize.parameterize("_").singularize.to_sym

      it "for #{model} creates a #{model}" do
        expect(build(factory)).to be_an_instance_of model
      end

      it "for #{model} creates a valid object" do
        expect{build(factory).save!}.to_not raise_error
      end
    end
  end
end