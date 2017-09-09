class DoorPeopleController < ApplicationController
  before_action :set_door_person, only: [:show, :edit, :update, :destroy]

  # GET /door_people
  # GET /door_people.json
  def index
    @door_people = DoorPerson.all
  end

  # GET /door_people/1
  # GET /door_people/1.json
  def show
  end

  # GET /door_people/new
  def new
    @door_person = DoorPerson.new
  end

  # GET /door_people/1/edit
  def edit
  end

  # POST /door_people
  # POST /door_people.json
  def create
    @door_person = DoorPerson.new(door_person_params)

    respond_to do |format|
      if @door_person.save
        format.html { redirect_to @door_person, notice: 'Door person was successfully created.' }
        format.json { render :show, status: :created, location: @door_person }
      else
        format.html { render :new }
        format.json { render json: @door_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /door_people/1
  # PATCH/PUT /door_people/1.json
  def update
    respond_to do |format|
      if @door_person.update(door_person_params)
        format.html { redirect_to @door_person, notice: 'Door person was successfully updated.' }
        format.json { render :show, status: :ok, location: @door_person }
      else
        format.html { render :edit }
        format.json { render json: @door_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /door_people/1
  # DELETE /door_people/1.json
  def destroy
    @door_person.destroy
    respond_to do |format|
      format.html { redirect_to door_people_url, notice: 'Door person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_door_person
      @door_person = DoorPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def door_person_params
      params.require(:door_person).permit(:door_id, :person_id)
    end
end
