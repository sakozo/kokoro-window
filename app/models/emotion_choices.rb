class EmotionChoices < ActiveHash::Base
  self.data = [
      {id: 1, name: '最高！'}, {id: 2, name: '楽しい'}, {id: 3, name: '普通'}, {id: 4, name: '悲しい'}, {id: 5, name: 'よくない'}
  ]
end