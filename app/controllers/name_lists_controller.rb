class NameListsController < ApplicationController
  # GET /name_lists
  # GET /name_lists.json
  def index
    @name_lists = NameList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @name_lists }
    end
  end

  # GET /name_lists/1
  # GET /name_lists/1.json
  def show
    @name_list = NameList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @name_list }
    end
  end

  # GET /name_lists/new
  # GET /name_lists/new.json
  def new
    @name_list = NameList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @name_list }
    end
  end

  # GET /name_lists/1/edit
  def edit
    @name_list = NameList.find(params[:id])
  end

  # POST /name_lists
  # POST /name_lists.json
  def create
    @name_list = NameList.new(params[:name_list])

    respond_to do |format|
      if @name_list.save
        format.html { redirect_to @name_list, notice: 'Name list was successfully created.' }
        format.json { render json: @name_list, status: :created, location: @name_list }
      else
        format.html { render action: "new" }
        format.json { render json: @name_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /name_lists/1
  # PUT /name_lists/1.json
  def update
    @name_list = NameList.find(params[:id])

    respond_to do |format|
      if @name_list.update_attributes(params[:name_list])
        format.html { redirect_to @name_list, notice: 'Name list was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @name_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /name_lists/1
  # DELETE /name_lists/1.json
  def destroy
    @name_list = NameList.find(params[:id])
    @name_list.destroy

    respond_to do |format|
      format.html { redirect_to name_lists_url }
      format.json { head :ok }
    end
  end
end
