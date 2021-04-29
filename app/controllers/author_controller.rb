class AuthorController <  ActionController::Base
    protect_from_forgery with: :exception
    layout 'author'
    
    before_action :authenticate_author!
end
