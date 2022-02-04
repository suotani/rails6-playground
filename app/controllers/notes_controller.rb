class NotesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_note, only: %i[show edit update destroy]

  def index
    @notes = Note.all
  end

  def show
    render 'note'
  end

  def new
    @note = Note.new
    render 'note'
  end

  def create
    @note = Note.new(note_params)
    @note.save!
  rescue ActiveRecord::RecordInvalid => _e 
    @partial = 'new'
    render 'note'
  end

  def edit
    @partial = 'new'
    render 'note'
  end

  def update
    @note.update!(note_params)
  rescue ActiveRecord::RecordInvalid => _e 
    @partial = 'new'
    render 'note'
  end

  def destroy
    @note_id = @note.id
    @note.destroy
  end

private
  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :author, :body)
  end
end