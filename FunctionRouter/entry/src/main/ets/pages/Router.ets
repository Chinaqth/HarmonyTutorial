import router from '@ohos.router'
@Entry
@Component
struct Router {
  @State message: string = 'This is Router Page'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
        Button() {
          Text('back')
            .height(40)
            .fontSize(30)
            .padding({left:20,right:20})
        }
        .margin({top:20})
        .onClick(() => {
          router.back()
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}