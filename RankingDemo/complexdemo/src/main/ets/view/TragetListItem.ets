import { Data } from '../bean/Data'

@Preview
@Component
export struct TargetListItem {
  @State isExpanded: boolean = false
  @Link @Watch('onClickChange') clickIndex: number
  public index: number = 0
  data: Data

  onClickChange() {
    if (this.clickIndex != this.index) {
      this.isExpanded = false
    }
  }

  build() {
    Row() {
      Column() {
        Text(this.data.title)
          .fontSize(10)
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .height(40)
        if (this.isExpanded) {
          Text(this.data.subtitle)
            .width('100%')
            .textAlign(TextAlign.Center)
        }
      }
      .width("100%")
      .height(this.isExpanded ? 60 : 40)
      .borderRadius(20)
      .backgroundColor(Color.White)
      .animation({ duration: 300 })
      .onClick(() => {
        this.isExpanded = !this.isExpanded
        this.clickIndex = this.index
      })
    }.width('100%')
    .padding(10)

  }
}