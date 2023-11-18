import { ListComponent } from '../view/ListComponent'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Scroll() {
      Column( {
      }) {
        Text("List")
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontStyle(FontStyle.Italic)
          .fontWeight(FontWeight.Bold)
          .fontSize(30)
        ListComponent()
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .height('100%')
    }
    .scrollBar(BarState.Off)
    .backgroundColor('#F7F7F7')

  }
}