module Types
    class QueryType < Types::BaseObject
        # Add root-level fields here.
        # They will be entry points for queries on your schema.

        field :texts, [TextType], null: true,
        description: "Show all texts"

        def texts
            Text.all
        end

        field :translations, [TranslationType], null: true,
        description: "Show all translations for current authenticated user"

        def translations
            context[:current_user].translations
        end

        field :me, UserType, null: true,
        description: "Show the current authenticated user"

        def me
            context[:current_user]
        end
    end
end
