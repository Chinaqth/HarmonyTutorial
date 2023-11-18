import { Data } from '../bean/Data'

@Preview
@Component
export struct TargetListItem {
  @State isExpanded: boolean = false
  data: Data

  build() {
    Row() {
      Column() {
        Text(this.data.title)
          .fontSize(10)
          .textAlign(TextAlign.Start)
          .fontSize(20)
        if (this.isExpanded) {
          Text(this.data.subtitle)
            .width('100%')
            .textAlign(TextAlign.Center)
        }
      }
      .width("100%")
      .borderRadius(20)
      .backgroundColor(Color.White)
      .animation({ duration: 300 })
      .justifyContent(FlexAlign.Center)
      .onClick(() => {
        this.isExpanded = !this.isExpanded
      })
    }.width('100%')
    .padding(10)

  }
}