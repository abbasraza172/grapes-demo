module API
  module V1
    class Graduates < Grape::API
      include API::V1::Defaults

      resource :dummy do


        desc "Return all graduates"
        get "" do
          {data: "all data arsalan"}
        end




        desc "Return a graduate"
        params do
          requires :id, type: String, desc: "ID of the
            graduate"
        end

        get ":id", root: "graduate" do
          {data: "this response is for #{permitted_params[:id]}"}
        end
      end
    end
  end
end