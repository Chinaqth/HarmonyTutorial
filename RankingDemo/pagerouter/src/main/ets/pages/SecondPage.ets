import router from '@ohos.router'
@Entry
@Component
struct SecondPage {
  @State message: string = 'Second Page'
  @State intent: string = (router.getParams() as Record<string, string>)['src'];
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.intent)
          .fontSize(20)
        Button('back')
          .margin('20vp')
          .onClick(()=> {
            router.back({
              url:'pages/FirstPage',
              params: {
                src:'Second Page Info'
              }
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}