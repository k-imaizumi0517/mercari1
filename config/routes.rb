Rails.application.routes.draw do
  devise_for :users

  root 'items#index'
  resources :users                     #tweets_controllerに対してのresourcesメソッド
  resources :addresses, only: [:new, :create, :edit, :update]

  resources :items, only: [:index,:new,:show,:create]


  get 'mains/profile', to: 'mains#profile'
  get 'mains/deliver_adress', to: 'mains#deliver_adress'
  get 'mains/card', to: 'mains#card'
  get 'mains/card_new', to: 'mains#creditnew'
  get 'mains/card_after', to: 'mains#creditafter'
  get 'mains/email_password', to: 'mains#email_password'
  get 'mains/identification', to: 'mains#identification'
  get 'mains/sms_confirmation', to: 'mains#sms_confirmation'
  get 'mains/logout', to: 'mains#logout'
  get 'mains/sales_transfer', to: 'mains#sales_transfer'
  get 'mains/points_confirmation', to: 'mains#points_confirmation'
  get 'mains/points_history', to: 'mains#points_history'
  get 'mains/points_limit', to: 'mains#points_limit'
  get 'mains/sales_history', to: 'mains#sales_history'
  get 'mains/sales_tra_lim', to: 'mains#sales_tra_lim'
  get 'mains/sales_tra_bank', to: 'mains#sales_tra_bank'
  get 'mains/sales_tra_history', to: 'mains#sales_tra_history'
  get 'mains/sales_tra_account_register', to: 'mains#sales_tra_account_register'

  get 'mains/top', to: 'mains#mypage'
  get 'mains/notification', to: 'mains#mypage_notification'
  get 'mains/todo', to: 'mains#mypage_todo'
  get 'mains/like/history', to: 'mains#mypage_like_history'
  get 'mains/listings/listing', to: 'mains#mypage_listings_listing'
  get 'mains/listings/in_progress', to: 'mains#mypage_listings_in_progress'
  get 'mains/listings/completed', to: 'mains#mypage_listings_completed'
  get 'mains/purchase', to: 'mains#mypage_purchase'
  get 'mains/purchased', to: 'mains#mypage_purchased'
  get 'mains/news', to: 'mains#mypage_news'
  get 'mains/review/history', to: 'mains#mypage_review_history'

  get 'tests/order_status', to: 'tests#order_status'
  get 'tests/purchase_pre_confirmation', to: 'tests#purchase_pre_confirmation'
  get 'tests/purchase_confirmation', to: 'tests#purchase_confirmation'
  get 'tests/order_status_waiting', to: 'tests#order_status_waiting'
  get 'tests/account', to: 'tests#account'
  get 'tests/sms_confirmation', to: 'tests#sms_confirmation'
  get 'tests/adress_new', to: 'tests#adress_new'
  get 'tests/credit_new', to: 'tests#credit_new'
  get 'tests/account_completion', to: 'tests#account_completion'
  get 'tests/putting_item', to: 'tests#putting_item'
  get 'tests/order_status_after_shipping', to: 'tests#order_status_after_shipping'


  resources :credits, only: [:index, :new, :create, :destroy]
  
  resources :users, only: [:edit, :update]

end
