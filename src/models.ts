export interface ICashier {
  fullname: string
  age: number
  sex: Sex
  yearofexp: number
  workslnshift: Shift
  previousework: string
  workweekstandart: boolean
  cashregister_id: ICashregister
}

export interface ICashregister {
  num: number
  serialnum?: string
  shop_id: IShop
}

export interface IShop {
  name: string
  city: string
  address: string
}

enum Sex {
  'Male',
  'Female',
}
enum Shift {
  'first' = 1,
  'second' = 2,
  'third' = 3,
}
