class TimeEntriesController < ApplicationController
  def create
    e = Employee.find(params[:employee_id])
    time_entry = e.time_entries.build(params.require(:time_entry).permit(:time, :account_id))
 if !time_entry.save
   logger.error time_entry.errors.full_messages
 end
    redirect_to employee_path(e)
  end
end
