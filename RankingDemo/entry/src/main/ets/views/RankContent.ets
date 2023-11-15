import { RankData } from '../bean/RankData'
import { FONT_SIZE_BODY, FULL_SCREEN_SIZE } from '../constants/Constants'

@Preview
@Component
export struct RankContent {
  private rankDate: RankData
  build() {
    Row() {
      Text(this.rankDate.id)
        .fontSize(FONT_SIZE_BODY)
        .fontWeight(FontWeight.Normal)
        .fontColor($r('app.color.content_color'))
        .width('30%')
      Text(this.rankDate.name)
        .width('50%')
      Text(this.rankDate.vote)
        .fontSize(FONT_SIZE_BODY)
        .fontWeight(FontWeight.Normal)
        .textAlign(TextAlign.End)
        .fontColor($r('app.color.content_color'))
        .width('20%')
    }
  }
}