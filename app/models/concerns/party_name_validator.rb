class PartyNameValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        if value.split(" ").first != "/the/i"
            record.errors.add(attribute, "name must start with 'the or The!'")
        end
    end
end