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
        description: "Show all translations for current authenticated user" do 
            argument :text_id, Int, required: false
        end

        def translations(text_id: nil)
            if text_id
                translation = Translation.find_by(
                    text_id: text_id,
                    translator_id: context[:current_user].id
                )
                if translation
                    [translation]
                else
                    nil
                end
            else
                context[:current_user].translations
            end
        end

        field :me, UserType, null: true,
        description: "Show the current authenticated user"

        def me
            context[:current_user]
        end

        field :languages, [LanguageType], null: true,
        description: "Show all languages"

        def languages
            Language.all
        end
    end
end
