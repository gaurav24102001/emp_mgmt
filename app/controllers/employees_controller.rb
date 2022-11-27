class EmployeesController < ApplicationController
    # http_basic_authenticate_with name: "dhh", password: "secret",except: [:index, :show]
    skip_before_action :verify_authenticity_token




    def index 
        @employ = Employee.all # here Employee is databse name   /// database name is in snake case and plural form /// but for access database we use camelcase and singular form.
    # render json: @employ
    end

    def new
        @emp = Employee.new
    end

    def create
        @emp = Employee.new(emps_params)
        if @emp.save
            # render json:@emp
        redirect_to employees_path
        else
        render :new  
        end 
       
    end


    def show
        @emp = Employee.find(params[:id])
        # render json: @emp
    end


    def edit
        @emp = Employee.find(params[:id])
    end

    def update
        @emp = Employee.find(params[:id])
        if @emp.update(emps_params)
            redirect_to employees_path
        else
            render :edit
         end
    end

    
    def destroy
        @emp = Employee.find(params[:id])
        @emp.destroy
        redirect_to '/employees'
    end

    private
    def emps_params
       params.required( :employee).permit(:name, :phone, :email)
    end


end
