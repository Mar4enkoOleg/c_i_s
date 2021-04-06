export interface ICashier {
  id: number
  name: string
  shop: IShop
  experience: {
    shop: IShop[]
    startDate: Date
    endDate: Date
  }
}
export interface IShop {
  id: number
  address: {
    city: string
    street: string
    building: string | number
  }
  net: {
    name: string
  }
  workHistory: {
    startDate: Date
    endDate?: Date
  }
  workslnShift: number[]
  cashRegister: number
  workDays: number[]
}
export interface ICashRegister {
  id: number
  cashNumber: number
}
