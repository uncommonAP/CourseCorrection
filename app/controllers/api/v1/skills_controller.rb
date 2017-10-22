class Api::V1::SkillsController < ApplicationController
  def index
    render json: Skill.all
  end

  def create
    skill = Skill.new(skill_params)
    if skill.save
      render json: skill
    end
  end

  private

  def skill_params
    binding.pry
    params.require(:skill).permit(:name, :description)
  end
end
