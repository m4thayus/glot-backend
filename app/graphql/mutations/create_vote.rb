module Mutations
    class CreateVote < BaseMutation
        # arguments passed to the `resolved` method
        argument :up, Boolean, required: true
        argument :translation_id, Int, required: true

        # return type from the mutation
        type Types::VoteType

        def resolve(up: nil, translation_id: nil)
            Vote.create!(
                up: up,
                user_id: context[:current_user].id,
                translation_id: translation_id
            )
        end
    end
end