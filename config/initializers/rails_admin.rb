RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.model Address do
    visible false
  end

  config.model Address do
    edit do
      field :address
      field :complement
      field :zip_code
      field :city
      field :state
      field :country
    end
  end

  config.model User do
    visible false
  end

  config.model Item do
    visible false
  end

  config.model Item do
    edit do
      field :product
      field :quantity
      field :total
    end
  end

  config.model Discount do
    create do
      field :name
      field :kind
      field :value
      field :description
    end

    edit do
      field :name
      field :kind
      field :value
      field :description
    end
  end

  config.model Sale do
    create do
      field :client
      field :sale_date
      field :items
      field :discount
      field :total
      field :remaining
    end

    edit do
      field :client
      field :sale_date
      field :items
      field :discount
      field :total
      field :remaining
    end
  end

  config.model Client do
    create do
      field :name
      field :birthday
      field :phone
      field :email
      field :notes
      field :address
    end

    edit do
      field :name
      field :birthday
      field :phone
      field :email
      field :notes
      field :address
    end
  end

  config.model Product do
    create do 
      field :name
      field :price
      field :photo
      field :description
      field :status
    end

    edit do 
      field :name
      field :price
      field :photo
      field :description
    end
  end

  config.model Stock do
    create do
      field :product

      # sets minimum value 0
      # it does not make sense quantity below 0
      field :quantity, :integer do
        html_attributes min: 0
      end
    end
    edit do
      field :product
      
      field :quantity, :integer do
        html_attributes min: 0
      end
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
