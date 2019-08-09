module Mutations
    class CreateTranslation < BaseMutation
        # arguments passed to the `resolved` method
        argument :title, String, required: true
        argument :content, String, required: true
        argument :translator_id, Int, required: true
        argument :text_id, Int, required: true

        # return type from the mutation
        type Types::TranslationType

        def resolve(title: nil, content: nil, translator_id: nil, text_id: nil)
            Translation.create!(
                title: title,
                content: content,
                translator_id: translator_id,
                text_id: text_id,
            )
        end
    end
end