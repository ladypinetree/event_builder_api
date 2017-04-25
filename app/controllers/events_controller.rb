class EventsController < ProtectedController
  before_action :set_event, only: [:update, :destroy]

  # GET /events
  def index
    @events = current_user.events.all
    render json: @events
  end

  # GET /events/1
  def show
    render json: current_user.events.find(params[:id])
  end

  # POST /events
  def create
    @event = current_user.events.build(event_params)
    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end
  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      head :no_content
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    head :no_content
  end

  # private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = current_user.events.find(params[:id])
    end
     private :set_event
    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:event_title, :event_type, :event_date, :todo1, :todo2,
      :todo3, :todo4, :todo5, :todo6, :todo7, :todo8, :todo9, :todo10, :todo11, :todo12, :todo13,
      :todo14, :todo15, :todo16, :todo17, :todo18, :todo19, :todo20)
    end
    private :event_params
  end
