class UserMailer < ApplicationMailer
  def account_activation(user)
    @user = user
    mail from: 'noreply@example.com', to: user.email, subject: "Account activation"
  end

  def password_reset(user)
    @user = user
    mail from: 'noreply@example.com', to: user.email, subject: "Password reset"
  end
end