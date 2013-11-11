class Ailment < ActiveRecord::Base
  def to_s
    name
  end

  def self.choices(params)
    return Ailment.all
    choices = Ailment.all
    if params.has_key?("prac")
      choices << Ailment.new(:name => params[:prac][:ailment_attributes][:id])
    end
    choices
  end
end
