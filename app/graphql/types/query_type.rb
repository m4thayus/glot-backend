module Types
    class QueryType < Types::BaseObject
        # Add root-level fields here.
        # They will be entry points for queries on your schema.

        field :texts, [TextType], null: true,
        description: "Show all texts"

        def texts
            Text.all
        end

    end
end
