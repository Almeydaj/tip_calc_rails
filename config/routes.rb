TipCalcRails::Application.routes.draw do
   root :to => 'welcome#index'

   match "/calc" => "welcome#calc", :as => "calc"
end
