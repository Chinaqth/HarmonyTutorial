import { rankData1, rankData2 } from '../model/DataModel'

export class DataViewModel {
  loadRankData(): any[] {
    return rankData1
  }

  loadRankDataBk(): any[] {
    return rankData2
  }
}