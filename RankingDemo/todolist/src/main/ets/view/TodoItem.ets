import { padding } from '../constants/Constants'

@Preview
@Component
export struct TodoItem {
  private todo: string = ""
  @State isComplete: boolean = false

  build() {
    Row() {
      Image(this.isComplete ? $r('app.media.ic_ok') : $r('app.media.ic_default'))
        .width(30)
        .height(30)
        .margin('20vp')
        .onClick(() => {
          this.isComplete = !this.isComplete
        })
      Text(this.todo)
        .fontSize(20)
        .fontColor(Color.Black)
        .opacity(this.isComplete ? 0.4 : 1)
        .decoration({ type: this.isComplete ? TextDecorationType.LineThrough : TextDecorationType.None })
    }
    .width('100%')
    .height(64)
    .borderRadius(20)
    .backgroundColor(Color.White)
  }
}