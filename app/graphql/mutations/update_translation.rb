module Mutations
    class UpdateTranslation < BaseMutation
        # arguments passed to the `resolved` method
        argument :id, Int, required: true
        argument :title, String, required: true
        argument :content, String, required: true
        argument :text_id, Int, required: true
        argument :status, String, required: true

        # return type from the mutation
        type Types::TranslationType

        def resolve(id: nil, title: nil, content: nil, text_id: nil, status: nil)
            translation = Translation.find(id)
            translation.update(
                title: title,
                content: content,
                translator_id: context[:current_user].id,
                text_id: text_id,
                status: status
            )
            translation
        end
    end
end