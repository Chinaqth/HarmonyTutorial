import { imageTitleSize, paddingTitle } from '../constants/Constants'

@Preview({ title: "title" })
@Component
export struct TitleComponent {
  @State title: Resource = $r('app.string.title_a')

  build() {
    Row() {
      Row() {
        Image($r('app.media.ic_public_back'))
          .size(imageTitleSize)
          .margin({ right: 20 })
        Text(this.title)
          .fontSize(25)
          .fontWeight(FontWeight.Medium)
      }
      .width('50%')
      .justifyContent(FlexAlign.Start)
      Row() {
        Image($r('app.media.loading'))
          .size(imageTitleSize)
      }
      .width('50%')
      .justifyContent(FlexAlign.End)
    }
    .width('100%')
    .padding(paddingTitle)
  }
}