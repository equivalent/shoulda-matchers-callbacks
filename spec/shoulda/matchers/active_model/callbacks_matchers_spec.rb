require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::Callbacks do

  ActiveRecord::Base::CALLBACKS.each do |callback_name|
    context 'class with callbacks' do
      subject{ ClassWithCallbacks }
      it{ should send("have_#{callback_name}_callback_on", :method_to_call) }
    end

    context 'class with callbacks' do
      subject{ ClassWithoutCallbacks }
      it{ should_not send("have_#{callback_name}_callback_on", :method_to_call) }
    end
  end

  context 'class with after create callback' do
    subject{ ClassWithoutAfterCreateCalbacks }
    it{ should_not have_before_create_callback_on :foo_bar }
    it{ should     have_after_create_callback_on  :foo_bar }
    it{ should_not have_after_update_callback_on  :foo_bar }
  end

end
