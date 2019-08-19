module Mutations
    class CreateText < BaseMutation
        # arguments passed to the `resolved` method
        argument :title, String, required: true
        argument :content, String, required: true
        argument :pay, Int, required: true
        argument :source_language_id, Int, required: true
        argument :target_language_id, Int, required: true
        argument :difficulty_id, Int, required: true

        # return type from the mutation
        type Types::TextType

        def resolve(title: nil, content: nil, pay: nil, source_language_id: nil, target_language_id: nil, difficulty_id: nil)
            Text.create!(
                title: title,
                content: content,
                creator_id: context[:current_user].id,
                status: 'pending',
                pay: pay,
                source_language_id: source_language_id,
                target_language_id: target_language_id,
                difficulty_id: difficulty_id
            )
        end
    end
end