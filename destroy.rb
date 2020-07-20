#代入
p story = "bakemonogatari"

#代入の代入
x = story

#破壊的メソッドに渡す
p story.upcase!.object_id

#全部同じになる
p story.object_id
p x.object_id

p "##################################"

#代入
p story_two = "tukimonogatari"

#代入の代入
y = story_two

#非破壊的メソッドに渡す
p story_two.upcase.object_id

#upcaseメソッドの影響を受けていない
p story_two.object_id
p y.object_id