class Object
  def self.boolean_reader(*names)
    names.each do |name|
      define_method(:"#{name}?") do
        !!instance_variable_get(:"@#{name}")
      end
    end
  end
end
