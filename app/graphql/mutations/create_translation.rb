module Mutations
    class CreateTranslation < BaseMutation
        # arguments passed to the `resolved` method
        argument :title, String, required: true
        argument :content, String, required: true
        argument :creator_id, Int, required: true
        argument :text_id, Int, required: true

        # return type from the mutation
        type Types::TranslationType

        def resolve(title: nil, content: nil, creator_id: nil, text_id: nil)
            Link.create!(
                title: title,
                content: content,
                creator_id: creator_id,
                text_id: text_id
            )
        end
    end
end