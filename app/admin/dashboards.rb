ActiveAdmin::Dashboards.build do

  section "Newly Registered User", priority: 10 do
    table_for User.recent(10).collect do
      column "Name" do |user|
        link_to_if(user.name.present?,user.name.to_s, admin_user_path(user))
      end
      column "Email" do |user|
        link_to(user.email, admin_user_path(user))
      end
      column "Date" do |user|
        "#{time_ago_in_words(user.created_at)} ago"
      end
    end
  end

  section "Recently Logged in Users", priority: 20 do
    table_for User.logged_in(10).collect do
      column "Name" do |user|
        link_to_if(user.name.present?,user.name.to_s, admin_user_path(user))
      end
      column "Email" do |user|
        link_to(user.email, admin_user_path(user))
      end
      column "Last Activity" do |user|
        time_ago_in_words(user.current_sign_in_at)
      end
      column "Login IP" do |user|
        user.current_sign_in_ip
      end
    end
  end

end