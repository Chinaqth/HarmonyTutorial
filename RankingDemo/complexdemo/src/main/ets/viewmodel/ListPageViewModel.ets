import ArrayList from '@ohos.util.ArrayList'
import { Data } from '../bean/Data'
export class ListPageViewModel {
  data: Array<Data> = []

  getData() :Array<Data> {
    return this.data
  }
  addData(data: Data) {
    this.data.push(data)
  }
}