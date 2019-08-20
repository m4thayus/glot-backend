module Mutations
    class CreateKnownLanguage < BaseMutation
        # arguments passed to the `resolved` method
        argument :language_id, Int, required: true
        argument :difficulty_id, Int, required: true

        # return type from the mutation
        type Types::KnownLanguageType

        def resolve(language_id: nil, difficulty_id: nil)
            KnownLanguage.create!(
                user_id: context[:current_user].id,
                language_id: language_id,
                difficulty_id: difficulty_id
            )
        end
    end
end