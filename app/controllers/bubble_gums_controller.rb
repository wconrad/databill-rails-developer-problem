class BubbleGumsController < ApplicationController
  # GET /bubble_gums
  # GET /bubble_gums.json
  def index
    @bubble_gums = BubbleGum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bubble_gums }
    end
  end

  # GET /bubble_gums/1
  # GET /bubble_gums/1.json
  def show
    @bubble_gum = BubbleGum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bubble_gum }
    end
  end

  # GET /bubble_gums/new
  # GET /bubble_gums/new.json
  def new
    @bubble_gum = BubbleGum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bubble_gum }
    end
  end

  # GET /bubble_gums/1/edit
  def edit
    @bubble_gum = BubbleGum.find(params[:id])
  end

  # POST /bubble_gums
  # POST /bubble_gums.json
  def create
    @bubble_gum = BubbleGum.new(params[:bubble_gum])

    respond_to do |format|
      if @bubble_gum.save
        format.html { redirect_to @bubble_gum, :notice => 'Bubble gum was successfully created.' }
        format.json { render :json => @bubble_gum, :status => :created, :location => @bubble_gum }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bubble_gum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bubble_gums/1
  # PUT /bubble_gums/1.json
  def update
    @bubble_gum = BubbleGum.find(params[:id])

    respond_to do |format|
      if @bubble_gum.update_attributes(params[:bubble_gum])
        format.html { redirect_to @bubble_gum, :notice => 'Bubble gum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bubble_gum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bubble_gums/1
  # DELETE /bubble_gums/1.json
  def destroy
    @bubble_gum = BubbleGum.find(params[:id])
    @bubble_gum.destroy

    respond_to do |format|
      format.html { redirect_to bubble_gums_url }
      format.json { head :ok }
    end
  end
end
