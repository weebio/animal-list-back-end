class AnimalController < Sinatra::Base

  get "/animals" do
      Animal.all.to_json
      # { note: "It works" }.to_json  

  end

  get "/animals/:id" do
    # { note: "It works" }.to_json
  end

  delete "/animals/:id" do
    { note: "It ceases to exist" }.to_json
    animal_to_delete = Animal.find(params[:id])
    animal_to_delete.delete

    Animal.all.to_json
  end
  
  post "/animals/create" do
    request.body.rewind
    request_payload = JSON.parse request.body.read

    animal = Animal.create(
      image: request_payload["image"],
      name: request_payload["name"],
      age: request_payload["age"],
      breed: request_payload["breed"],
    )

    Animal.all.to_json
  end
  
  # example 1:
  # website.com/pages/1
  # website.com/pages/2
  # /pages/:page_num

  # params[:page_num]


  # example 2:
  # github.com/facebook/react
  # /:user_name/:repository_name

  # params[:user_name]
  # params[:repository_name]

  # example 3:
  # put "/appointments/:pet_id/:caretaker_name" do
  #   Animal.find(params[:pet_id])
  #   # Caretaker.find(params[:pet_id])
  # end

end