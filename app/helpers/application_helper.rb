module ApplicationHelper
  def errors_to_jquery_magic(object)
    object.errors.inject('') do |res, (attribute, error)|
      res << "$('#contact_#{attribute}').parents('.control-group').addClass('error');"
    end
  end
end
