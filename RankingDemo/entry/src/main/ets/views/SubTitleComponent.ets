import { FONT_SIZE_SUB_TITLE, PADDING_SUBTITLE } from '../constants/Constants'
@Preview({ title: 'subtitle' })
@Component
export struct SubTitleComponent {
  build() {
    Row() {
      Text($r('app.string.subtitle_rank'))
        .fontSize(FONT_SIZE_SUB_TITLE)
        .fontColor($r('app.color.sub_title_color'))
        .width("30%")
      Text($r('app.string.subtitle_category'))
        .fontSize(FONT_SIZE_SUB_TITLE)
        .fontColor($r('app.color.sub_title_color'))
        .width('50%')
      Text($r('app.string.subtitle_vote_num'))
        .fontSize(FONT_SIZE_SUB_TITLE)
        .fontColor($r('app.color.sub_title_color'))
        .width('20%')
        .textAlign(TextAlign.End)
    }
    .width('85%')
    .margin({bottom:20})
  }
}