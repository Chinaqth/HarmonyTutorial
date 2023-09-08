import data from '@ohos.telephony.data'
import { RankData } from '../bean/RankData'
import {
  APP_BACKGROUND_COLOR,
  FONT_SIZE_BODY,
  FULL_SCREEN_SIZE,
paddingHorizon,
paddingVertical,
  PADDING_SUBTITLE
} from '../constants/Constants'
import { DataViewModel } from '../viewmodel/DataViewModel'
import { RankContent } from '../views/RankContent'
import { SubTitleComponent } from '../views/SubTitleComponent'
import { TitleComponent } from '../views/TitleComponent'

let dataViewModel: DataViewModel = new DataViewModel()

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State dataSource: Array<RankData> = dataViewModel.loadRankData()

  build() {
    Column() {
      TitleComponent()
      SubTitleComponent()
      this.RankList()
    }
    .height(FULL_SCREEN_SIZE)
    .backgroundColor(APP_BACKGROUND_COLOR)
  }

  @Builder RankList() {
    Column() {
      List() {
        ForEach(this.dataSource,
          (item) => {
            ListItem() {
              RankContent({rankDate: item})
            }
            .padding(paddingVertical(10))
            .width(FULL_SCREEN_SIZE)
          })
      }
      .padding(paddingHorizon(20))
      .width(FULL_SCREEN_SIZE)
    }
    .padding(paddingVertical(10))
    .justifyContent(FlexAlign.Center)
    .width('90%')
    .borderRadius(20)
    .backgroundColor(Color.White)
  }
}