import AppContext from '@ohos.app.ability.common';
import { FONT_SIZE_TITLE, IMAGE_TITLE_SIZE, PADDING_TITLE } from '../constants/Constants'

@Preview({ title: "title" })
@Component
export struct TitleComponent {
  @State title: Resource = $r('app.string.title')
  @Link isChangeData: boolean
  build() {
    Row() {
      Row() {
        Image($r('app.media.ic_public_back'))
          .size(IMAGE_TITLE_SIZE)
          .margin({ right: 20 })
          .onClick( () => {
            let handler = getContext() as AppContext.UIAbilityContext;
            handler.terminateSelf();
          })
        Text(this.title)
          .fontSize(FONT_SIZE_TITLE)
          .fontWeight(FontWeight.Medium)
      }
      .width('50%')
      .justifyContent(FlexAlign.Start)

      Row() {
        Image($r('app.media.loading'))
          .size(IMAGE_TITLE_SIZE)
      }.onClick( () => {
        this.isChangeData = !this.isChangeData
      })
      .width('50%')
      .justifyContent(FlexAlign.End)
    }
    .width('100%')
    .padding(PADDING_TITLE)
  }

  @Builder aaa() {

  }
}

