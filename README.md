```rb config/routes
  resources :user
```
注意，这里的路由设计使用单数 resource:user，跟 resources:users 相比，单数的路由少了 index action，并且网址上不会有 ID，路由方法也皆为单数不需要参数，例如 user_path、edit_user_path。

会这样设计的原因是对前台用户而言，编辑用户资料就是编辑自己的资料，所以这个单数的用意是指唯一自己，用户也不能修改其他人的资料，因此在controller 里面是写@user = current_user，而不是根据params[:id] 去捞不同用户。

另一个附带的好处是网址列上不会出现ID，即使你没有实作第一章去改 Model 网址，用户也不会知道 User ID。
