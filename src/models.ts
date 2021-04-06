export interface ICashier {
  fullname: string
  age: number
  sex: Sex
  phone: string
  previousework: string
  yearofexp: number
  workslnshift: Shift
  workweekstandart: boolean
  idshop: IShop
  idcashreg: ICashregister
}

export interface ICashregister {
  numbercashreg: number
  serialnumber: string
}

export interface IShop {
  shopname: string
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
