class Factory
  def class_for (class_or_to_s)
    if class_or_to_s.respond_to?(:to_sym)
      variable_name_to_class_name(class_or_to_s).split('::').inject(Object) {
      	|o, str| o.const_get(str) }
    else
      class_or_to_s
    end
  end
end
