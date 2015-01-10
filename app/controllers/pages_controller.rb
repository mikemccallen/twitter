class PagesController < ApplicationController
  def create
    Person.create(person_params)
  end

  private

  def person_params
    params.require(:person).permit(:name, :age)
  end
end