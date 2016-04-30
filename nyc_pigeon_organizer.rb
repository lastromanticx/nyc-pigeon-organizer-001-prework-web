def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}

  data.each do |attr, attr_types|
    attr_types.each do |type, names|
      names.each do |name|
        if result.has_key?(name)
          if result[name].has_key?(attr)
            result[name][attr] << type.to_s
          else
          	result[name][attr] = [type.to_s]
          end
        else
          result[name] = {attr => [type.to_s]}
        end
      end
    end
  end

  result
end