# frozen_string_literal: true

class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
  end
end
