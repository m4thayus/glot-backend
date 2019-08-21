module Mutations
    class CreateVote < BaseMutation
        # arguments passed to the `resolved` method
        argument :up, Boolean, required: true
        argument :translation_id, Int, required: true

        # return type from the mutation
        type Types::VoteType

        def resolve(up: nil, translation_id: nil)
            vote = Vote.create!(
                up: up,
                user_id: context[:current_user].id,
                translation_id: translation_id
            )

            translation = Translation.find_by(id: translation_id)
            up_votes = translation.votes.select{ |vote| vote.up == true}
            down_votes = translation.votes.select{ |vote| vote.up == false}

            if (up_votes.length - down_votes.length == 3) 
                translation.update(status: 'complete')
                translation.text.update(status: 'complete')
            end

            return vote

        end
    end
end