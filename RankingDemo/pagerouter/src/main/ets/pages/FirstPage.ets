import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'First Page'
  @State pageIntent: string = ''
  onPageShow() {
    this.pageIntent = (router.getParams() as Record<string, string>)['src']
  }
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.pageIntent)
          .fontSize(20)
        Button('Next Page')
          .margin('20vp')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/SecondPage',
              params: {
                src: 'Index页面传来的数据',
              }
            })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}