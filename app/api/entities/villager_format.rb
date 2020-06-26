class VillagerFormat < Grape::Entity
  expose :id
  expose :name
  expose :birthday
  expose :gender
  expose :icon_uri
  expose :image_uri
  expose :catch_phrase
  expose :personality
  expose :species
  expose :voted
end
