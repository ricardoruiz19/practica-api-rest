class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)

<<<<<<< HEAD
  #raise @ticket.inspect
=======
>>>>>>> e726aa3161ce6e066dfcacd5328d2a5029866644
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

<<<<<<< HEAD

  def newticket
     @ticket = Ticket.new(event_id: params[:event_id])
     @ticket.save
    redirect_to '/tickets/'+@ticket.id.to_s+'.json'
  end


  def updateticket
     @ticket = Ticket.update(params[:id_ticket], event_id: params[:event_id ])
     @ticket.save
    redirect_to '/tickets/'+@ticket.id.to_s+'.json'
  end

  def destroyticket
    @ticket = Ticket.find(params[:t])
    @ticket.destroy
   redirect_to '/tickets.json'
      
  end


=======
>>>>>>> e726aa3161ce6e066dfcacd5328d2a5029866644
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
<<<<<<< HEAD
      params.require(:ticket).permit(:event_id)
=======
      params.require(:ticket).permit(:nombre, :ciudad, :pais, :fecha_inicio, :fecha_evento)
>>>>>>> e726aa3161ce6e066dfcacd5328d2a5029866644
    end
end
