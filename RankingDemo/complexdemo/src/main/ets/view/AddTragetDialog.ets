@Preview
@CustomDialog
@Component
export struct AddTargetDialog {
  cancel: () => void
  confirm: () => void
  addTargetDialogController: CustomDialogController

  build() {
    Column({ space: 10 }) {
      Text('Add Target')
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
        .width('100%')
        .textAlign(TextAlign.Center)
        .padding(20)
      Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
        Text('cancel')
          .fontSize(20)
          .fontColor(Color.Black)
          .onClick(() => {
            this.addTargetDialogController.close()
            this.cancel()
          })
        Text('confirm')
          .fontSize(20)
          .fontColor(Color.Red)
          .onClick(() => {
            this.addTargetDialogController.close()
            this.confirm()
          })
      }
      .padding({
        bottom: 10
      })
    }
    .width('100%')
    .backgroundColor(Color.White)
  }
}