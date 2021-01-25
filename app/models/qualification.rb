class Qualification < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '保育士' },
    { id: 3, name: '幼稚園教諭' },
    { id: 4, name: '調理師' },
    { id: 5, name: '栄養士' },
    { id: 6, name: '特になし' }
  ]
    include ActiveHash::Associations
    has_many :users
  end
