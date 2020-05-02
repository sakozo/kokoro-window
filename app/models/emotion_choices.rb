class EmotionChoices < ActiveHash::Base
  self.data = [
      {id: 1, name: '最高！'}, {id: 2, name: '楽しい'}, {id: 3, name: '普通'}, {id: 3, name: '悲しい'}, {id: 4, name: 'よくない'}
  ]
end