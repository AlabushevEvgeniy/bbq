RSpec::Matchers.define :permit do |action|
  match do |policy|
    policy.public_send("#{action}?")
  end

  failure_message_for_should do |policy|
    "#{policy.class} does not permit #{action} on #{policy.record} for #{policy.user.inspect}."
  end

  failure_message_for_should_not do |policy|
    "#{policy.class} does not forbid #{action} on #{policy.record} for #{policy.user.inspect}."
  end
  # match do |policy|
  #   policy.new(user, record).public_send(action)
  # end

  # failure_message_for_should do |policy|
  #   "Expected #{ policy.to_s } to permit #{ action.to_s } on #{ record.to_s } but it didn't."
  # end

  # failure_message_for_should_not do |policy|
  #   "Expected #{ policy.to_s } to forbid #{ action.to_s } on #{ record.to_s } but it didn't."
  # end
end
