class CommentsController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :update, :destroy, :edit]
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(params[:comment])
    @pun = @comment.pun

    respond_to do |format|
      if @comment.save
        #render :partial => 'some_partial'
        #respond_with @comment, :location => pun_url(@comment.pun)
        #format.html { redirect_to pun_url(@comment.pun), notice: 'Comment was successfully created.' }
        #format.json { render json: @comment, status: :created, location: @comment }
        format.js { render :action => '../puns/comment'  }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @pun = Pun.where("id = ?", @comment.pun_id)
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_path() }
      format.json { head :no_content }
    end
  end
end
