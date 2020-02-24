class FollowsController < ApplicationController
  def index
    @follows = Follow.all

    render("follow_templates/index.html.erb")
  end

  def show
    @follow = Follow.find(params.fetch("id_to_display"))

    render("follow_templates/show.html.erb")
  end

  def new_form
    @follow = Follow.new

    render("follow_templates/new_form.html.erb")
  end

  def create_row
    @follow = Follow.new

    @follow.status = params.fetch("status")
    @follow.recipient_id = params.fetch("recipient_id")
    @follow.sender_id = params.fetch("sender_id")

    if @follow.valid?
      @follow.save

      redirect_back(:fallback_location => "/follows", :notice => "Follow created successfully.")
    else
      render("follow_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @follow = Follow.find(params.fetch("prefill_with_id"))

    render("follow_templates/edit_form.html.erb")
  end

  def update_row
    @follow = Follow.find(params.fetch("id_to_modify"))

    @follow.status = params.fetch("status")
    @follow.recipient_id = params.fetch("recipient_id")
    @follow.sender_id = params.fetch("sender_id")

    if @follow.valid?
      @follow.save

      redirect_to("/follows/#{@follow.id}", :notice => "Follow updated successfully.")
    else
      render("follow_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @follow = Follow.find(params.fetch("id_to_remove"))

    @follow.destroy

    redirect_to("/follows", :notice => "Follow deleted successfully.")
  end
end