import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'This is Index Page !'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(35)
          .fontWeight(FontWeight.Bold)
        Button() {
          Text('Router')
            .fontSize(25)
            .padding({left:20,right:20})
            .height(40)
        }.margin({top:30})
        .onClick(() => {
          router.pushUrl({url:'pages/Router'})
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}