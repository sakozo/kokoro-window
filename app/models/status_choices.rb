class StatusChoices < ActiveHash::Base
  self.data = [
      {id: 1, name: '遊びたい'}, {id: 2, name: '飲みたい'}, {id: 3, name: 'ひとりを満喫'}, {id: 4, name: '勉強中'}, {id: 5, name: 'ひまー'}
  ]
end
